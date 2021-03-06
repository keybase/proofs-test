// Generated by IcedCoffeeScript 1.8.0-d
(function() {
  var RooterBinding, SocialNetworkBinding, constants, urlmod,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  SocialNetworkBinding = require('keybase-proofs').SocialNetworkBinding;

  constants = require('./constants').constants;

  urlmod = require('url');

  RooterBinding = (function(_super) {
    __extends(RooterBinding, _super);

    function RooterBinding() {
      return RooterBinding.__super__.constructor.apply(this, arguments);
    }

    RooterBinding.prototype.service_name = function() {
      return "rooter";
    };

    RooterBinding.prototype.proof_type = function() {
      return constants.proof_types.rooter;
    };

    RooterBinding.prototype.is_short = function() {
      return true;
    };

    RooterBinding.check_name = function(n) {
      var ret;
      ret = (n == null) || ((n = n.toLowerCase()) == null) ? false : n.match(/^[a-z0-9_]{1,20}$/) ? true : false;
      return ret;
    };

    RooterBinding.prototype.check_name = function(n) {
      return RooterBinding.check_name(n);
    };

    RooterBinding.name_hint = function() {
      return "alphanumerics, between 1 and 15 characters long";
    };

    return RooterBinding;

  })(SocialNetworkBinding);

  exports.RooterBinding = RooterBinding;

}).call(this);
