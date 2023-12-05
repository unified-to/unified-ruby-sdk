# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Transaction

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(connection_id: String, accounting_transaction: T.nilable(Shared::AccountingTransaction)).returns(Utils::FieldAugmented) }
    def create_accounting_transaction(connection_id, accounting_transaction = nil)
      # create_accounting_transaction - Create a transaction
      request = Operations::CreateAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        accounting_transaction: accounting_transaction
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateAccountingTransactionRequest,
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

      res = Operations::CreateAccountingTransactionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingTransaction)
          res.accounting_transaction = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_accounting_transaction(connection_id, id, fields = nil)
      # get_accounting_transaction - Retrieve a transaction
      request = Operations::GetAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetAccountingTransactionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetAccountingTransactionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingTransaction)
          res.accounting_transaction = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListAccountingTransactionsRequest)).returns(Utils::FieldAugmented) }
    def list_accounting_transactions(request)
      # list_accounting_transactions - List all transactions
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListAccountingTransactionsRequest,
        base_url,
        '/accounting/{connection_id}/transaction',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListAccountingTransactionsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListAccountingTransactionsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::AccountingTransaction])
          res.accounting_transactions = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, accounting_transaction: T.nilable(Shared::AccountingTransaction)).returns(Utils::FieldAugmented) }
    def patch_accounting_transaction(connection_id, id, accounting_transaction = nil)
      # patch_accounting_transaction - Update a transaction
      request = Operations::PatchAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_transaction: accounting_transaction
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchAccountingTransactionRequest,
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

      res = Operations::PatchAccountingTransactionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingTransaction)
          res.accounting_transaction = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_accounting_transaction(connection_id, id)
      # remove_accounting_transaction - Remove a transaction
      request = Operations::RemoveAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction/{id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::RemoveAccountingTransactionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end

    sig { params(connection_id: String, id: String, accounting_transaction: T.nilable(Shared::AccountingTransaction)).returns(Utils::FieldAugmented) }
    def update_accounting_transaction(connection_id, id, accounting_transaction = nil)
      # update_accounting_transaction - Update a transaction
      request = Operations::UpdateAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_transaction: accounting_transaction
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateAccountingTransactionRequest,
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

      res = Operations::UpdateAccountingTransactionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingTransaction)
          res.accounting_transaction = out
        end
      end
      res
    end
  end
end
