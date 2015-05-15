
kbp = require 'keybase-proofs'


exports.constants = constants =
  proof_types :
    rooter : 100001
d = {}
(d[v] = k for k,v of constants.proof_types)
(d[v] = k for k,v of kbp.constants.proof_types)
exports.proof_type_to_string = d
