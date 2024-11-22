# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Journal
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, accounting_journal: T.nilable(::UnifiedRubySDK::Shared::AccountingJournal), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateAccountingJournalResponse) }
    def create_accounting_journal(connection_id, accounting_journal = nil, fields_ = nil)
      # create_accounting_journal - Create a journal
      request = ::UnifiedRubySDK::Operations::CreateAccountingJournalRequest.new(
        
        connection_id: connection_id,
        accounting_journal: accounting_journal,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateAccountingJournalRequest,
        base_url,
        '/accounting/{connection_id}/journal',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_journal, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateAccountingJournalRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateAccountingJournalResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingJournal)
          res.accounting_journal = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetAccountingJournalResponse) }
    def get_accounting_journal(connection_id, id, fields_ = nil)
      # get_accounting_journal - Retrieve a journal
      request = ::UnifiedRubySDK::Operations::GetAccountingJournalRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetAccountingJournalRequest,
        base_url,
        '/accounting/{connection_id}/journal/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetAccountingJournalRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetAccountingJournalResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingJournal)
          res.accounting_journal = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListAccountingJournalsRequest)).returns(::UnifiedRubySDK::Operations::ListAccountingJournalsResponse) }
    def list_accounting_journals(request)
      # list_accounting_journals - List all journals
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListAccountingJournalsRequest,
        base_url,
        '/accounting/{connection_id}/journal',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListAccountingJournalsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListAccountingJournalsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::AccountingJournal])
          res.accounting_journals = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, accounting_journal: T.nilable(::UnifiedRubySDK::Shared::AccountingJournal), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchAccountingJournalResponse) }
    def patch_accounting_journal(connection_id, id, accounting_journal = nil, fields_ = nil)
      # patch_accounting_journal - Update a journal
      request = ::UnifiedRubySDK::Operations::PatchAccountingJournalRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_journal: accounting_journal,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchAccountingJournalRequest,
        base_url,
        '/accounting/{connection_id}/journal/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_journal, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchAccountingJournalRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchAccountingJournalResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingJournal)
          res.accounting_journal = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveAccountingJournalResponse) }
    def remove_accounting_journal(connection_id, id)
      # remove_accounting_journal - Remove a journal
      request = ::UnifiedRubySDK::Operations::RemoveAccountingJournalRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveAccountingJournalRequest,
        base_url,
        '/accounting/{connection_id}/journal/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveAccountingJournalResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
                
        res.headers = r.headers
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, accounting_journal: T.nilable(::UnifiedRubySDK::Shared::AccountingJournal), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateAccountingJournalResponse) }
    def update_accounting_journal(connection_id, id, accounting_journal = nil, fields_ = nil)
      # update_accounting_journal - Update a journal
      request = ::UnifiedRubySDK::Operations::UpdateAccountingJournalRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_journal: accounting_journal,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateAccountingJournalRequest,
        base_url,
        '/accounting/{connection_id}/journal/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_journal, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateAccountingJournalRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateAccountingJournalResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingJournal)
          res.accounting_journal = out
        end
      end
      res
    end
  end
end
