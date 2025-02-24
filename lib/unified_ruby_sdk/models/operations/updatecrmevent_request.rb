# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateCrmEventRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # An event represents an event, activity, or engagement and is always associated with a deal, contact, or company
      field :crm_event, ::UnifiedRubySDK::Shared::CrmEvent, { 'request': { 'media_type': 'application/json' } }
      # ID of the Event
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, crm_event: ::UnifiedRubySDK::Shared::CrmEvent, id: ::String, fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, crm_event: nil, id: nil, fields_: nil)
        @connection_id = connection_id
        @crm_event = crm_event
        @id = id
        @fields_ = fields_
      end
    end
  end
end
