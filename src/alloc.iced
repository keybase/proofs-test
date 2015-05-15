web_service = require './web_service'
proofs = require 'keybase-proofs'

#=======================================================

lookup_tab = {
  "test.web_service_binding.rooter" : web_service.RooterBinding
}

#=======================================================

exports.alloc = (type, args) ->
  proofs.alloc type, args, lookup_tab

#=======================================================

