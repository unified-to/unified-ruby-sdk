# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/apierror'
require_relative '../shared/error'
require_relative '../shared/order'

module OpenApiSDK
  module Operations

    class CreateOrderRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :request_body, T::Array[Shared::OrderInput], { 'request': { 'media_type': 'application/json' } }
      # The url to call when the order is updated.
      field :callback_url, T.nilable(String), { 'query_param': { 'field_name': 'callback_url', 'style': 'form', 'explode': true } }


      sig { params(request_body: T::Array[Shared::OrderInput], callback_url: T.nilable(String)).void }
      def initialize(request_body: nil, callback_url: nil)
        @request_body = request_body
        @callback_url = callback_url
      end
    end


    class CreateOrderResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # An error occurred interacting with the API.
      field :api_error, T.nilable(Shared::APIError)
      # An unknown error occurred interacting with the API.
      field :error, T.nilable(Shared::Error)
      # The order was created successfully.
      field :order, T.nilable(Shared::Order)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, api_error: T.nilable(Shared::APIError), error: T.nilable(Shared::Error), order: T.nilable(Shared::Order), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, api_error: nil, error: nil, order: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @api_error = api_error
        @error = error
        @order = order
        @raw_response = raw_response
      end
    end
  end
end
