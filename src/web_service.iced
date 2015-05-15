{SocialNetworkBinding} = require 'keybase-proofs'
{constants} = require './constants'
urlmod = require 'url'

#==========================================================================

class RooterBinding extends SocialNetworkBinding

  service_name : -> "rooter"
  proof_type   : -> constants.proof_types.rooter
  is_short     : -> true

  @check_name : (n) ->
    ret = if not n? or not (n = n.toLowerCase())? then false
    else if n.match /^[a-z0-9_]{1,20}$/ then true
    else false
    return ret

  check_name : (n) -> RooterBinding.check_name(n)

  @name_hint : () -> "alphanumerics, between 1 and 15 characters long"

#==========================================================================

exports.RooterBinding = RooterBinding

#==========================================================================
