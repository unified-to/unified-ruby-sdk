# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Transaction
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(security: ::UnifiedRubySDK::Operations::CreateAccountingTransactionSecurity, connection_id: ::String, accounting_transaction: T.nilable(::UnifiedRubySDK::Shared::AccountingTransaction)).returns(::UnifiedRubySDK::Operations::CreateAccountingTransactionResponse) }
    def create_accounting_transaction(security, connection_id, accounting_transaction = nil)
      # create_accounting_transaction - Create a transaction
      request = ::UnifiedRubySDK::Operations::CreateAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        accounting_transaction: accounting_transaction
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_transaction, :json)
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

      res = ::UnifiedRubySDK::Operations::CreateAccountingTransactionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingTransaction)
          res.accounting_transaction = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::GetAccountingTransactionSecurity, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetAccountingTransactionResponse) }
    def get_accounting_transaction(security, connection_id, id, fields_ = nil)
      # get_accounting_transaction - Retrieve a transaction
      request = ::UnifiedRubySDK::Operations::GetAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetAccountingTransactionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetAccountingTransactionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingTransaction)
          res.accounting_transaction = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListAccountingTransactionsRequest), security: ::UnifiedRubySDK::Operations::ListAccountingTransactionsSecurity).returns(::UnifiedRubySDK::Operations::ListAccountingTransactionsResponse) }
    def list_accounting_transactions(request, security)
      # list_accounting_transactions - List all transactions
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListAccountingTransactionsRequest,
        base_url,
        '/accounting/{connection_id}/transaction',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListAccountingTransactionsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListAccountingTransactionsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::AccountingTransaction])
          res.accounting_transactions = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::PatchAccountingTransactionSecurity, connection_id: ::String, id: ::String, accounting_transaction: T.nilable(::UnifiedRubySDK::Shared::AccountingTransaction)).returns(::UnifiedRubySDK::Operations::PatchAccountingTransactionResponse) }
    def patch_accounting_transaction(security, connection_id, id, accounting_transaction = nil)
      # patch_accounting_transaction - Update a transaction
      request = ::UnifiedRubySDK::Operations::PatchAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_transaction: accounting_transaction
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_transaction, :json)
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

      res = ::UnifiedRubySDK::Operations::PatchAccountingTransactionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingTransaction)
          res.accounting_transaction = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::RemoveAccountingTransactionSecurity, connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveAccountingTransactionResponse) }
    def remove_accounting_transaction(security, connection_id, id)
      # remove_accounting_transaction - Remove a transaction
      request = ::UnifiedRubySDK::Operations::RemoveAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveAccountingTransactionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::UpdateAccountingTransactionSecurity, connection_id: ::String, id: ::String, accounting_transaction: T.nilable(::UnifiedRubySDK::Shared::AccountingTransaction)).returns(::UnifiedRubySDK::Operations::UpdateAccountingTransactionResponse) }
    def update_accounting_transaction(security, connection_id, id, accounting_transaction = nil)
      # update_accounting_transaction - Update a transaction
      request = ::UnifiedRubySDK::Operations::UpdateAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_transaction: accounting_transaction
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_transaction, :json)
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

      res = ::UnifiedRubySDK::Operations::UpdateAccountingTransactionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingTransaction)
          res.accounting_transaction = out
        end
      end
      res
    end
  end
end
