# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig


  SERVERS = [
    'https://api.unified.to', # 1 - North American data region
    'https://api-eu.unified.to', # 1 - European data region
  ].freeze
  # Contains the list of servers available to the SDK

  class SDKConfiguration < ::UnifiedRubySDK::Utils::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :security, Shared::Security
    field :server_url, T.nilable(String)
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String
  
    
    sig { params(client: Faraday::Connection, security: T.nilable(Shared::Security), server_url: T.nilable(String), server_idx: T.nilable(Integer)).void }
    def initialize(client, security, server_url, server_idx)
      @client = client
      @server_url = server_url
      @server_idx = server_idx.nil? ? 0 : server_idx
      @language = 'ruby'
      @openapi_doc_version = '1.0'
      @sdk_version = '0.4.13'
      @gen_version = '2.263.3'
      @user_agent = 'speakeasy-sdk/ruby 0.4.13 2.263.3 1.0 unified_ruby_sdk'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      @server_idx = 0 if @server_idx.nil?
          

      [SERVERS[@server_idx], {}]
    end
  end
end
