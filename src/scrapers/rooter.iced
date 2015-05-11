kbp = require 'kebase-proofs'
{BaseScraper, constants} = kbp
{v_codes} = constants
{decode} = require('pgp-utils').armor
{make_esc} = require 'iced-error'

##
## Rooter is a test social network, hosted at Keybase.  Tweets on
## rooter are known as "root"s
##
#================================================================================

exports.RooterScraper = class RooterScraper extends BaseScraper

  # ---------------------------------------------------------------------------

  _check_args : (args, cb) ->
    err = if not(args.username?)
      new Error "Bad args to rooter proof: no username given"
    else if not (args.name?) or (args.name isnt 'rooter')
      new Error "Bad args to rooter proof: type is #{args.name}"
    else
      null
    cb err

  # ---------------------------------------------------------------------------

  feed_url : (username) -> "http://localhost:3000/_/api/1.0/rooter/#{username}.json"

  # ---------------------------------------------------------------------------

  hunt2 : ({username, proof_text_check, name}, cb) ->

    # calls back with rc, out
    rc       = v_codes.OK
    out      = {}
    esc = make_esc cb, "hunt2"

    await @_check_args { username, name }, esc defer()
    
    cb null, out

  # ---------------------------------------------------------------------------

  _check_api_url : ({api_url,username}) -> api_url is @profile_url(username)

  # ---------------------------------------------------------------------------

  check_status: ({username, api_url, proof_text_check, remote_id}, cb) ->

    # calls back with a v_code or null if it was ok
    await @_get_url_body { url : api_url}, defer err, rc, html

    if (rc is v_codes.OK)
      $ = @libs.cheerio.load html
      divs = $('div#public_key_content pre.statement')
      rc = if not divs.length then v_codes.FAILED_PARSE
      else if not (txt = divs.first()?.html())? then v_codes.CONTENT_MISSING
      else
        # strip all \r's out, which coinbase seems to insert....
        txt = txt.replace(/\r/g, '')
        if txt.indexOf(proof_text_check) >= 0 then v_codes.OK
        else  v_codes.NOT_FOUND

    cb err, rc

#================================================================================

