# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'faraday/retry'
require 'sorbet-runtime'
require_relative 'utils/retries'

module UnifiedRubySDK
  extend T::Sig
  class Candidate
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(ats_candidate: ::UnifiedRubySDK::Shared::AtsCandidate, connection_id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::CreateAtsCandidateResponse) }
    def create_ats_candidate(ats_candidate, connection_id, fields_ = nil, timeout_ms = nil)
      # create_ats_candidate - Create a candidate
      request = ::UnifiedRubySDK::Operations::CreateAtsCandidateRequest.new(
        
        ats_candidate: ats_candidate,
        connection_id: connection_id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateAtsCandidateRequest,
        base_url,
        '/ats/{connection_id}/candidate',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_candidate, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateAtsCandidateRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.post(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::CreateAtsCandidateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::AtsCandidate)
          res.ats_candidate = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::GetAtsCandidateResponse) }
    def get_ats_candidate(connection_id, id, fields_ = nil, timeout_ms = nil)
      # get_ats_candidate - Retrieve a candidate
      request = ::UnifiedRubySDK::Operations::GetAtsCandidateRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetAtsCandidateRequest,
        base_url,
        '/ats/{connection_id}/candidate/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetAtsCandidateRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.get(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetAtsCandidateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::AtsCandidate)
          res.ats_candidate = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListAtsCandidatesRequest), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::ListAtsCandidatesResponse) }
    def list_ats_candidates(request, timeout_ms = nil)
      # list_ats_candidates - List all candidates
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListAtsCandidatesRequest,
        base_url,
        '/ats/{connection_id}/candidate',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListAtsCandidatesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.get(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListAtsCandidatesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::UnifiedRubySDK::Shared::AtsCandidate])
          res.ats_candidates = out
        end
      end

      res
    end


    sig { params(ats_candidate: ::UnifiedRubySDK::Shared::AtsCandidate, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::PatchAtsCandidateResponse) }
    def patch_ats_candidate(ats_candidate, connection_id, id, fields_ = nil, timeout_ms = nil)
      # patch_ats_candidate - Update a candidate
      request = ::UnifiedRubySDK::Operations::PatchAtsCandidateRequest.new(
        
        ats_candidate: ats_candidate,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchAtsCandidateRequest,
        base_url,
        '/ats/{connection_id}/candidate/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_candidate, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchAtsCandidateRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.patch(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::PatchAtsCandidateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::AtsCandidate)
          res.ats_candidate = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::RemoveAtsCandidateResponse) }
    def remove_ats_candidate(connection_id, id, timeout_ms = nil)
      # remove_ats_candidate - Remove a candidate
      request = ::UnifiedRubySDK::Operations::RemoveAtsCandidateRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveAtsCandidateRequest,
        base_url,
        '/ats/{connection_id}/candidate/{id}',
        request
      )
      headers = {}
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.delete(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::RemoveAtsCandidateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
        res.headers = r.headers
      end

      res
    end


    sig { params(ats_candidate: ::UnifiedRubySDK::Shared::AtsCandidate, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::UpdateAtsCandidateResponse) }
    def update_ats_candidate(ats_candidate, connection_id, id, fields_ = nil, timeout_ms = nil)
      # update_ats_candidate - Update a candidate
      request = ::UnifiedRubySDK::Operations::UpdateAtsCandidateRequest.new(
        
        ats_candidate: ats_candidate,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateAtsCandidateRequest,
        base_url,
        '/ats/{connection_id}/candidate/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_candidate, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateAtsCandidateRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.put(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::UpdateAtsCandidateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::AtsCandidate)
          res.ats_candidate = out
        end
      end

      res
    end
  end
end
