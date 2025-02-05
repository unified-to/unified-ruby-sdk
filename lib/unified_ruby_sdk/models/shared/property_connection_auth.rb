# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  
    # An authentication object that represents a specific authorized user's connection to an integration.
    class PropertyConnectionAuth < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :access_token, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('access_token') } }

      field :api_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('api_url') } }

      field :app_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('app_id') } }

      field :authorize_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('authorize_url') } }

      field :client_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('client_id') } }

      field :client_secret, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('client_secret') } }

      field :consumer_key, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('consumer_key') } }

      field :consumer_secret, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('consumer_secret') } }

      field :dev_api_key, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('dev_api_key') } }

      field :emails, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

      field :expires_in, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('expires_in') } }

      field :expiry_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('expiry_date'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('key') } }

      field :meta, T.nilable(::UnifiedRubySDK::Shared::PropertyConnectionAuthMeta), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('meta') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }
      # When integration.auth_type = "other", this field contains the authentication credentials in the same order as token_names
      field :other_auth_info, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('other_auth_info') } }

      field :pem, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('pem') } }

      field :refresh_token, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('refresh_token') } }

      field :refresh_token_expires_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('refresh_token_expires_date'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :refresh_token_expires_in, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('refresh_token_expires_in') } }

      field :state, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('state') } }

      field :token, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('token') } }

      field :token_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('token_url') } }


      sig { params(access_token: T.nilable(::String), api_url: T.nilable(::String), app_id: T.nilable(::String), authorize_url: T.nilable(::String), client_id: T.nilable(::String), client_secret: T.nilable(::String), consumer_key: T.nilable(::String), consumer_secret: T.nilable(::String), dev_api_key: T.nilable(::String), emails: T.nilable(T::Array[::String]), expires_in: T.nilable(::Float), expiry_date: T.nilable(::DateTime), key: T.nilable(::String), meta: T.nilable(::UnifiedRubySDK::Shared::PropertyConnectionAuthMeta), name: T.nilable(::String), other_auth_info: T.nilable(T::Array[::String]), pem: T.nilable(::String), refresh_token: T.nilable(::String), refresh_token_expires_date: T.nilable(::DateTime), refresh_token_expires_in: T.nilable(::Float), state: T.nilable(::String), token: T.nilable(::String), token_url: T.nilable(::String)).void }
      def initialize(access_token: nil, api_url: nil, app_id: nil, authorize_url: nil, client_id: nil, client_secret: nil, consumer_key: nil, consumer_secret: nil, dev_api_key: nil, emails: nil, expires_in: nil, expiry_date: nil, key: nil, meta: nil, name: nil, other_auth_info: nil, pem: nil, refresh_token: nil, refresh_token_expires_date: nil, refresh_token_expires_in: nil, state: nil, token: nil, token_url: nil)
        @access_token = access_token
        @api_url = api_url
        @app_id = app_id
        @authorize_url = authorize_url
        @client_id = client_id
        @client_secret = client_secret
        @consumer_key = consumer_key
        @consumer_secret = consumer_secret
        @dev_api_key = dev_api_key
        @emails = emails
        @expires_in = expires_in
        @expiry_date = expiry_date
        @key = key
        @meta = meta
        @name = name
        @other_auth_info = other_auth_info
        @pem = pem
        @refresh_token = refresh_token
        @refresh_token_expires_date = refresh_token_expires_date
        @refresh_token_expires_in = refresh_token_expires_in
        @state = state
        @token = token
        @token_url = token_url
      end
    end
  end
end
