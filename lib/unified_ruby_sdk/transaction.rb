# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'faraday/retry'
require 'sorbet-runtime'
require_relative 'sdk_hooks/hooks'
require_relative 'utils/retries'

module UnifiedRubySDK
  extend T::Sig
  class Transaction
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(accounting_transaction: Models::Shared::AccountingTransaction, connection_id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(Models::Operations::CreateAccountingTransactionResponse) }
    def create_accounting_transaction(accounting_transaction, connection_id, fields_ = nil, timeout_ms = nil)
      # create_accounting_transaction - Create a transaction
      request = Models::Operations::CreateAccountingTransactionRequest.new(
        
        accounting_transaction: accounting_transaction,
        connection_id: connection_id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Models::Operations::CreateAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_transaction, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?

      if form
        body = Utils.encode_form(form)
      elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
        body = URI.encode_www_form(data)
      else
        body = data
      end
      query_params = Utils.get_query_params(Models::Operations::CreateAccountingTransactionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'createAccountingTransaction',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      http_response = T.let(nil, T.nilable(Faraday::Response))
      
      
      begin
        http_response = connection.post(url) do |req|
          req.body = body
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          req.params = query_params
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if http_response.nil? || Utils.error_status?(http_response.status)
          http_response = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        else
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        end
        
        if http_response.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end
      
      content_type = http_response.headers.fetch('Content-Type', 'application/octet-stream')
      if Utils.match_status_code(http_response.status, ['200'])
        if Utils.match_content_type(content_type, 'application/json')
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
          obj = Crystalline.unmarshal_json(JSON.parse(http_response.env.response_body), Models::Shared::AccountingTransaction)
          response = Models::Operations::CreateAccountingTransactionResponse.new(
            status_code: http_response.status,
            content_type: content_type,
            raw_response: http_response,
            accounting_transaction: obj
          )

          return response
        else
          raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'Unknown content type received'
        end
      elsif Utils.match_status_code(http_response.status, ['4XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      elsif Utils.match_status_code(http_response.status, ['5XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      else
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'Unknown status code received'

      end
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(Models::Operations::GetAccountingTransactionResponse) }
    def get_accounting_transaction(connection_id, id, fields_ = nil, timeout_ms = nil)
      # get_accounting_transaction - Retrieve a transaction
      request = Models::Operations::GetAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Models::Operations::GetAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Models::Operations::GetAccountingTransactionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'getAccountingTransaction',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      http_response = T.let(nil, T.nilable(Faraday::Response))
      
      
      begin
        http_response = connection.get(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          req.params = query_params
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if http_response.nil? || Utils.error_status?(http_response.status)
          http_response = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        else
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        end
        
        if http_response.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end
      
      content_type = http_response.headers.fetch('Content-Type', 'application/octet-stream')
      if Utils.match_status_code(http_response.status, ['200'])
        if Utils.match_content_type(content_type, 'application/json')
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
          obj = Crystalline.unmarshal_json(JSON.parse(http_response.env.response_body), Models::Shared::AccountingTransaction)
          response = Models::Operations::GetAccountingTransactionResponse.new(
            status_code: http_response.status,
            content_type: content_type,
            raw_response: http_response,
            accounting_transaction: obj
          )

          return response
        else
          raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'Unknown content type received'
        end
      elsif Utils.match_status_code(http_response.status, ['4XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      elsif Utils.match_status_code(http_response.status, ['5XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      else
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'Unknown status code received'

      end
    end


    sig { params(request: T.nilable(Models::Operations::ListAccountingTransactionsRequest), timeout_ms: T.nilable(Integer)).returns(Models::Operations::ListAccountingTransactionsResponse) }
    def list_accounting_transactions(request, timeout_ms = nil)
      # list_accounting_transactions - List all transactions
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Models::Operations::ListAccountingTransactionsRequest,
        base_url,
        '/accounting/{connection_id}/transaction',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Models::Operations::ListAccountingTransactionsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'listAccountingTransactions',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      http_response = T.let(nil, T.nilable(Faraday::Response))
      
      
      begin
        http_response = connection.get(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          req.params = query_params
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if http_response.nil? || Utils.error_status?(http_response.status)
          http_response = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        else
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        end
        
        if http_response.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end
      
      content_type = http_response.headers.fetch('Content-Type', 'application/octet-stream')
      if Utils.match_status_code(http_response.status, ['200'])
        if Utils.match_content_type(content_type, 'application/json')
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
          obj = Crystalline.unmarshal_json(JSON.parse(http_response.env.response_body), T::Array[Models::Shared::AccountingTransaction])
          response = Models::Operations::ListAccountingTransactionsResponse.new(
            status_code: http_response.status,
            content_type: content_type,
            raw_response: http_response,
            accounting_transactions: obj
          )

          return response
        else
          raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'Unknown content type received'
        end
      elsif Utils.match_status_code(http_response.status, ['4XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      elsif Utils.match_status_code(http_response.status, ['5XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      else
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'Unknown status code received'

      end
    end


    sig { params(accounting_transaction: Models::Shared::AccountingTransaction, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(Models::Operations::PatchAccountingTransactionResponse) }
    def patch_accounting_transaction(accounting_transaction, connection_id, id, fields_ = nil, timeout_ms = nil)
      # patch_accounting_transaction - Update a transaction
      request = Models::Operations::PatchAccountingTransactionRequest.new(
        
        accounting_transaction: accounting_transaction,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Models::Operations::PatchAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_transaction, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?

      if form
        body = Utils.encode_form(form)
      elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
        body = URI.encode_www_form(data)
      else
        body = data
      end
      query_params = Utils.get_query_params(Models::Operations::PatchAccountingTransactionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'patchAccountingTransaction',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      http_response = T.let(nil, T.nilable(Faraday::Response))
      
      
      begin
        http_response = connection.patch(url) do |req|
          req.body = body
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          req.params = query_params
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if http_response.nil? || Utils.error_status?(http_response.status)
          http_response = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        else
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        end
        
        if http_response.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end
      
      content_type = http_response.headers.fetch('Content-Type', 'application/octet-stream')
      if Utils.match_status_code(http_response.status, ['200'])
        if Utils.match_content_type(content_type, 'application/json')
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
          obj = Crystalline.unmarshal_json(JSON.parse(http_response.env.response_body), Models::Shared::AccountingTransaction)
          response = Models::Operations::PatchAccountingTransactionResponse.new(
            status_code: http_response.status,
            content_type: content_type,
            raw_response: http_response,
            accounting_transaction: obj
          )

          return response
        else
          raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'Unknown content type received'
        end
      elsif Utils.match_status_code(http_response.status, ['4XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      elsif Utils.match_status_code(http_response.status, ['5XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      else
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'Unknown status code received'

      end
    end


    sig { params(connection_id: ::String, id: ::String, timeout_ms: T.nilable(Integer)).returns(Models::Operations::RemoveAccountingTransactionResponse) }
    def remove_accounting_transaction(connection_id, id, timeout_ms = nil)
      # remove_accounting_transaction - Remove a transaction
      request = Models::Operations::RemoveAccountingTransactionRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Models::Operations::RemoveAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction/{id}',
        request
      )
      headers = {}
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'removeAccountingTransaction',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      http_response = T.let(nil, T.nilable(Faraday::Response))
      
      
      begin
        http_response = connection.delete(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if http_response.nil? || Utils.error_status?(http_response.status)
          http_response = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        else
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        end
        
        if http_response.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end
      
      content_type = http_response.headers.fetch('Content-Type', 'application/octet-stream')
      if Utils.match_status_code(http_response.status, ['200'])
        http_response = @sdk_configuration.hooks.after_success(
          hook_ctx: SDKHooks::AfterSuccessHookContext.new(
            hook_ctx: hook_ctx
          ),
          response: http_response
        )
        return Models::Operations::RemoveAccountingTransactionResponse.new(
          status_code: http_response.status,
          content_type: content_type,
          raw_response: http_response
        )
      elsif Utils.match_status_code(http_response.status, ['4XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      elsif Utils.match_status_code(http_response.status, ['5XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      else
        http_response = @sdk_configuration.hooks.after_success(
          hook_ctx: SDKHooks::AfterSuccessHookContext.new(
            hook_ctx: hook_ctx
          ),
          response: http_response
        )
        return Models::Operations::RemoveAccountingTransactionResponse.new(
          status_code: http_response.status,
          content_type: content_type,
          raw_response: http_response
        )
      end
    end


    sig { params(accounting_transaction: Models::Shared::AccountingTransaction, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(Models::Operations::UpdateAccountingTransactionResponse) }
    def update_accounting_transaction(accounting_transaction, connection_id, id, fields_ = nil, timeout_ms = nil)
      # update_accounting_transaction - Update a transaction
      request = Models::Operations::UpdateAccountingTransactionRequest.new(
        
        accounting_transaction: accounting_transaction,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Models::Operations::UpdateAccountingTransactionRequest,
        base_url,
        '/accounting/{connection_id}/transaction/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_transaction, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?

      if form
        body = Utils.encode_form(form)
      elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
        body = URI.encode_www_form(data)
      else
        body = data
      end
      query_params = Utils.get_query_params(Models::Operations::UpdateAccountingTransactionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'updateAccountingTransaction',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      http_response = T.let(nil, T.nilable(Faraday::Response))
      
      
      begin
        http_response = connection.put(url) do |req|
          req.body = body
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          req.params = query_params
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if http_response.nil? || Utils.error_status?(http_response.status)
          http_response = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        else
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
        end
        
        if http_response.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end
      
      content_type = http_response.headers.fetch('Content-Type', 'application/octet-stream')
      if Utils.match_status_code(http_response.status, ['200'])
        if Utils.match_content_type(content_type, 'application/json')
          http_response = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: http_response
          )
          obj = Crystalline.unmarshal_json(JSON.parse(http_response.env.response_body), Models::Shared::AccountingTransaction)
          response = Models::Operations::UpdateAccountingTransactionResponse.new(
            status_code: http_response.status,
            content_type: content_type,
            raw_response: http_response,
            accounting_transaction: obj
          )

          return response
        else
          raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'Unknown content type received'
        end
      elsif Utils.match_status_code(http_response.status, ['4XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      elsif Utils.match_status_code(http_response.status, ['5XX'])
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'API error occurred'
      else
        raise ::UnifiedRubySDK::Models::Errors::APIError.new(status_code: http_response.status, body: http_response.env.response_body, raw_response: http_response), 'Unknown status code received'

      end
    end
  end
end
