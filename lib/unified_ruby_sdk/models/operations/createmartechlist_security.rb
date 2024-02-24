# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateMartechListSecurity < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :jwt, ::String, { 'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'authorization' } }


      sig { params(jwt: ::String).void }
      def initialize(jwt: nil)
        @jwt = jwt
      end
    end
  end
end
