# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class RemoveHrisEmployeeRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Employee
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }


      sig { params(connection_id: ::String, id: ::String).void }
      def initialize(connection_id: nil, id: nil)
        @connection_id = connection_id
        @id = id
      end
    end
  end
end
