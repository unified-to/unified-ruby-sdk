# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class Security < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :jwt, T.nilable(::String), { 'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'authorization' } }


      sig { params(jwt: T.nilable(::String)).void }
      def initialize(jwt: nil)
        @jwt = jwt
      end
    end
  end
end
