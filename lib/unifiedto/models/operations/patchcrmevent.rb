# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/crmevent'

module OpenApiSDK
  module Operations

    class PatchCrmEventRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Event
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # An event represents an event, activity, or engagement and is always associated with a deal, contact, or company
      field :crm_event, T.nilable(Shared::CrmEvent), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, id: String, crm_event: T.nilable(Shared::CrmEvent)).void }
      def initialize(connection_id: nil, id: nil, crm_event: nil)
        @connection_id = connection_id
        @id = id
        @crm_event = crm_event
      end
    end


    class PatchCrmEventResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :crm_event, T.nilable(Shared::CrmEvent)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, crm_event: T.nilable(Shared::CrmEvent), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, crm_event: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @crm_event = crm_event
        @raw_response = raw_response
      end
    end
  end
end
