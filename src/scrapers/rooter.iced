kbp = require 'kebase-proofs'
{BaseScraper, constants} = kbp
{v_codes} = constants
{decode} = require('pgp-utils').armor
{make_esc} = require 'iced-error'

##
## Rooter is a test social network, hosted at Keybase.  Tweets on
## rooter are known as "toot"s
##
#================================================================================

exports.RooterScraper = class RooterScraper extends BaseScraper

  # ---------------------------------------------------------------------------

  _check_args : (args) ->
    err = if not(args.username?)
      new Error "Bad args to rooter proof: no username given"
    else if not (args.name?) or (args.name isnt 'rooter')
      new Error "Bad args to rooter proof: type is #{args.name}"
    else
      null
    return err

  # ---------------------------------------------------------------------------

  url : ({username,post_id}) ->
    parts = [ "http://localhost:3000/_/api/1.0/rooter/" ]
    parts.push username
    parts.push ("/" + post_id) if post_id?
    parts.push ".json"
    parts.join("")

  # ---------------------------------------------------------------------------

  hunt2 : ({username, proof_text_check, name}, cb) ->

    # calls back with rc, out
    rc  = v_codes.OK
    out = {}
    err = @_check_args { username, name }
    if err?
      rc = v_codes.FAILED_PARSE
    else
      url = @url { username }
      await @_get_url_body { url, json : true }, true, defer err, rc, json
      @log "| search input -> #{url} -> #{rc}"
      if rc is v_codes.OK
        rc = v_codes.NOT_FOUND
        for root in json.toots when toot.post.indexOf(proof_text_check) >= 0
          rc = v_codes.OK
          turl = @url { username, post_id : toot.post_id }
          out.api_url = out.human_url = turl
          out.remote_id = toot.post_id
          break
      out.rc = rc
    cb err, out

  # ---------------------------------------------------------------------------

  _check_api_url : ({api_url,username}) ->
    rxx = new RegExp("^" + @url({username, post_id : "[a-zA-Z]+"}) + "$")
    return (api_url? and api_url.match rxx)

  # ---------------------------------------------------------------------------

  check_status: ({username, api_url, proof_text_check, remote_id}, cb) ->
    # calls back with a v_code or null if it was ok
    await @_get_url_body { url : api_url, json : true }, defer err, rc, json
    rc =if (rc isnt v_codes.OK) then rc
    else if json.post.indexOf(proof_text_check) >= 0 then v_codes.OK
    else v_codes.NOT_FOUND
    cb err, rc

#================================================================================

