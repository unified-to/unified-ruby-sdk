# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Message
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, messaging_message: T.nilable(::UnifiedRubySDK::Shared::MessagingMessage), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateMessagingMessageResponse) }
    def create_messaging_message(connection_id, messaging_message = nil, fields_ = nil)
      # create_messaging_message - Create a message
      request = ::UnifiedRubySDK::Operations::CreateMessagingMessageRequest.new(
        
        connection_id: connection_id,
        messaging_message: messaging_message,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateMessagingMessageRequest,
        base_url,
        '/messaging/{connection_id}/message',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :messaging_message, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateMessagingMessageRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::CreateMessagingMessageResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MessagingMessage)
          res.messaging_message = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetMessagingMessageResponse) }
    def get_messaging_message(connection_id, id, fields_ = nil)
      # get_messaging_message - Retrieve a message
      request = ::UnifiedRubySDK::Operations::GetMessagingMessageRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetMessagingMessageRequest,
        base_url,
        '/messaging/{connection_id}/message/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetMessagingMessageRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetMessagingMessageResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MessagingMessage)
          res.messaging_message = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListMessagingMessagesRequest)).returns(::UnifiedRubySDK::Operations::ListMessagingMessagesResponse) }
    def list_messaging_messages(request)
      # list_messaging_messages - List all messages
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListMessagingMessagesRequest,
        base_url,
        '/messaging/{connection_id}/message',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListMessagingMessagesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListMessagingMessagesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::MessagingMessage])
          res.messaging_messages = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, messaging_message: T.nilable(::UnifiedRubySDK::Shared::MessagingMessage), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchMessagingMessageResponse) }
    def patch_messaging_message(connection_id, id, messaging_message = nil, fields_ = nil)
      # patch_messaging_message - Update a message
      request = ::UnifiedRubySDK::Operations::PatchMessagingMessageRequest.new(
        
        connection_id: connection_id,
        id: id,
        messaging_message: messaging_message,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchMessagingMessageRequest,
        base_url,
        '/messaging/{connection_id}/message/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :messaging_message, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchMessagingMessageRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::PatchMessagingMessageResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MessagingMessage)
          res.messaging_message = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveMessagingMessageResponse) }
    def remove_messaging_message(connection_id, id)
      # remove_messaging_message - Remove a message
      request = ::UnifiedRubySDK::Operations::RemoveMessagingMessageRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveMessagingMessageRequest,
        base_url,
        '/messaging/{connection_id}/message/{id}',
        request
      )
      headers = {}
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::RemoveMessagingMessageResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
        res.headers = r.headers
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, messaging_message: T.nilable(::UnifiedRubySDK::Shared::MessagingMessage), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateMessagingMessageResponse) }
    def update_messaging_message(connection_id, id, messaging_message = nil, fields_ = nil)
      # update_messaging_message - Update a message
      request = ::UnifiedRubySDK::Operations::UpdateMessagingMessageRequest.new(
        
        connection_id: connection_id,
        id: id,
        messaging_message: messaging_message,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateMessagingMessageRequest,
        base_url,
        '/messaging/{connection_id}/message/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :messaging_message, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateMessagingMessageRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::UpdateMessagingMessageResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MessagingMessage)
          res.messaging_message = out
        end
      end

      res
    end
  end
end
