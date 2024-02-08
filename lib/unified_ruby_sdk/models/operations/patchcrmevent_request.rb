# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchCrmEventRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Event
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # An event represents an event, activity, or engagement and is always associated with a deal, contact, or company
      field :crm_event, T.nilable(::UnifiedRubySDK::Shared::CrmEvent), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, crm_event: T.nilable(::UnifiedRubySDK::Shared::CrmEvent)).void }
      def initialize(connection_id: nil, id: nil, crm_event: nil)
        @connection_id = connection_id
        @id = id
        @crm_event = crm_event
      end
    end
  end
end