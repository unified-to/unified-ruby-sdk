# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Scorecard
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(security: ::UnifiedRubySDK::Operations::CreateAtsScorecardSecurity, connection_id: ::String, ats_scorecard: T.nilable(::UnifiedRubySDK::Shared::AtsScorecard)).returns(::UnifiedRubySDK::Operations::CreateAtsScorecardResponse) }
    def create_ats_scorecard(security, connection_id, ats_scorecard = nil)
      # create_ats_scorecard - Create a scorecard
      request = ::UnifiedRubySDK::Operations::CreateAtsScorecardRequest.new(
        
        connection_id: connection_id,
        ats_scorecard: ats_scorecard
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateAtsScorecardRequest,
        base_url,
        '/ats/{connection_id}/scorecard',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_scorecard, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = ::UnifiedRubySDK::Operations::CreateAtsScorecardResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsScorecard)
          res.ats_scorecard = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::GetAtsScorecardSecurity, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetAtsScorecardResponse) }
    def get_ats_scorecard(security, connection_id, id, fields_ = nil)
      # get_ats_scorecard - Retrieve a scorecard
      request = ::UnifiedRubySDK::Operations::GetAtsScorecardRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetAtsScorecardRequest,
        base_url,
        '/ats/{connection_id}/scorecard/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetAtsScorecardRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetAtsScorecardResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsScorecard)
          res.ats_scorecard = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListAtsScorecardsRequest), security: ::UnifiedRubySDK::Operations::ListAtsScorecardsSecurity).returns(::UnifiedRubySDK::Operations::ListAtsScorecardsResponse) }
    def list_ats_scorecards(request, security)
      # list_ats_scorecards - List all scorecards
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListAtsScorecardsRequest,
        base_url,
        '/ats/{connection_id}/scorecard',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListAtsScorecardsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListAtsScorecardsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::AtsScorecard])
          res.ats_scorecards = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::PatchAtsScorecardSecurity, connection_id: ::String, id: ::String, ats_scorecard: T.nilable(::UnifiedRubySDK::Shared::AtsScorecard)).returns(::UnifiedRubySDK::Operations::PatchAtsScorecardResponse) }
    def patch_ats_scorecard(security, connection_id, id, ats_scorecard = nil)
      # patch_ats_scorecard - Update a scorecard
      request = ::UnifiedRubySDK::Operations::PatchAtsScorecardRequest.new(
        
        connection_id: connection_id,
        id: id,
        ats_scorecard: ats_scorecard
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchAtsScorecardRequest,
        base_url,
        '/ats/{connection_id}/scorecard/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_scorecard, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
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

      res = ::UnifiedRubySDK::Operations::PatchAtsScorecardResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsScorecard)
          res.ats_scorecard = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::RemoveAtsScorecardSecurity, connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveAtsScorecardResponse) }
    def remove_ats_scorecard(security, connection_id, id)
      # remove_ats_scorecard - Remove a scorecard
      request = ::UnifiedRubySDK::Operations::RemoveAtsScorecardRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveAtsScorecardRequest,
        base_url,
        '/ats/{connection_id}/scorecard/{id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::RemoveAtsScorecardResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::UpdateAtsScorecardSecurity, connection_id: ::String, id: ::String, ats_scorecard: T.nilable(::UnifiedRubySDK::Shared::AtsScorecard)).returns(::UnifiedRubySDK::Operations::UpdateAtsScorecardResponse) }
    def update_ats_scorecard(security, connection_id, id, ats_scorecard = nil)
      # update_ats_scorecard - Update a scorecard
      request = ::UnifiedRubySDK::Operations::UpdateAtsScorecardRequest.new(
        
        connection_id: connection_id,
        id: id,
        ats_scorecard: ats_scorecard
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateAtsScorecardRequest,
        base_url,
        '/ats/{connection_id}/scorecard/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_scorecard, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
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

      res = ::UnifiedRubySDK::Operations::UpdateAtsScorecardResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsScorecard)
          res.ats_scorecard = out
        end
      end
      res
    end
  end
end
