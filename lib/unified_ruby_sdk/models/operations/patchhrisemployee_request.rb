# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchHrisEmployeeRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Employee
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :hris_employee, T.nilable(::UnifiedRubySDK::Shared::HrisEmployee), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, hris_employee: T.nilable(::UnifiedRubySDK::Shared::HrisEmployee)).void }
      def initialize(connection_id: nil, id: nil, hris_employee: nil)
        @connection_id = connection_id
        @id = id
        @hris_employee = hris_employee
      end
    end
  end
end
