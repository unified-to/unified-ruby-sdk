# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Prompt
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, genai_prompt: T.nilable(::UnifiedRubySDK::Shared::GenaiPrompt), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateGenaiPromptResponse) }
    def create_genai_prompt(connection_id, genai_prompt = nil, fields_ = nil)
      # create_genai_prompt - Create a prompt
      request = ::UnifiedRubySDK::Operations::CreateGenaiPromptRequest.new(
        
        connection_id: connection_id,
        genai_prompt: genai_prompt,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateGenaiPromptRequest,
        base_url,
        '/genai/{connection_id}/prompt',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :genai_prompt, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateGenaiPromptRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateGenaiPromptResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::GenaiPrompt)
          res.genai_prompt = out
        end
      end
      res
    end
  end
end
