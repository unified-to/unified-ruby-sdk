# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Contact
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(accounting_contact: ::UnifiedRubySDK::Shared::AccountingContact, connection_id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateAccountingContactResponse) }
    def create_accounting_contact(accounting_contact, connection_id, fields_ = nil)
      # create_accounting_contact - Create a contact
      request = ::UnifiedRubySDK::Operations::CreateAccountingContactRequest.new(
        
        accounting_contact: accounting_contact,
        connection_id: connection_id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateAccountingContactRequest,
        base_url,
        '/accounting/{connection_id}/contact',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_contact, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateAccountingContactRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateAccountingContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::AccountingContact)
          res.accounting_contact = out
        end
      end

      res
    end


    sig { params(crm_contact: ::UnifiedRubySDK::Shared::CrmContact, connection_id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateCrmContactResponse) }
    def create_crm_contact(crm_contact, connection_id, fields_ = nil)
      # create_crm_contact - Create a contact
      request = ::UnifiedRubySDK::Operations::CreateCrmContactRequest.new(
        
        crm_contact: crm_contact,
        connection_id: connection_id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateCrmContactRequest,
        base_url,
        '/crm/{connection_id}/contact',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_contact, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateCrmContactRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateCrmContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::CrmContact)
          res.crm_contact = out
        end
      end

      res
    end


    sig { params(uc_contact: ::UnifiedRubySDK::Shared::UcContact, connection_id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateUcContactResponse) }
    def create_uc_contact(uc_contact, connection_id, fields_ = nil)
      # create_uc_contact - Create a contact
      request = ::UnifiedRubySDK::Operations::CreateUcContactRequest.new(
        
        uc_contact: uc_contact,
        connection_id: connection_id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateUcContactRequest,
        base_url,
        '/uc/{connection_id}/contact',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :uc_contact, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateUcContactRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateUcContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::UcContact)
          res.uc_contact = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetAccountingContactResponse) }
    def get_accounting_contact(connection_id, id, fields_ = nil)
      # get_accounting_contact - Retrieve a contact
      request = ::UnifiedRubySDK::Operations::GetAccountingContactRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetAccountingContactRequest,
        base_url,
        '/accounting/{connection_id}/contact/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetAccountingContactRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetAccountingContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::AccountingContact)
          res.accounting_contact = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetCrmContactResponse) }
    def get_crm_contact(connection_id, id, fields_ = nil)
      # get_crm_contact - Retrieve a contact
      request = ::UnifiedRubySDK::Operations::GetCrmContactRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetCrmContactRequest,
        base_url,
        '/crm/{connection_id}/contact/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetCrmContactRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetCrmContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::CrmContact)
          res.crm_contact = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetUcContactResponse) }
    def get_uc_contact(connection_id, id, fields_ = nil)
      # get_uc_contact - Retrieve a contact
      request = ::UnifiedRubySDK::Operations::GetUcContactRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetUcContactRequest,
        base_url,
        '/uc/{connection_id}/contact/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetUcContactRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetUcContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::UcContact)
          res.uc_contact = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListAccountingContactsRequest)).returns(::UnifiedRubySDK::Operations::ListAccountingContactsResponse) }
    def list_accounting_contacts(request)
      # list_accounting_contacts - List all contacts
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListAccountingContactsRequest,
        base_url,
        '/accounting/{connection_id}/contact',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListAccountingContactsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListAccountingContactsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::UnifiedRubySDK::Shared::AccountingContact])
          res.accounting_contacts = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListCrmContactsRequest)).returns(::UnifiedRubySDK::Operations::ListCrmContactsResponse) }
    def list_crm_contacts(request)
      # list_crm_contacts - List all contacts
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListCrmContactsRequest,
        base_url,
        '/crm/{connection_id}/contact',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListCrmContactsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListCrmContactsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::UnifiedRubySDK::Shared::CrmContact])
          res.crm_contacts = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListUcContactsRequest)).returns(::UnifiedRubySDK::Operations::ListUcContactsResponse) }
    def list_uc_contacts(request)
      # list_uc_contacts - List all contacts
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListUcContactsRequest,
        base_url,
        '/uc/{connection_id}/contact',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListUcContactsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListUcContactsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::UnifiedRubySDK::Shared::UcContact])
          res.uc_contacts = out
        end
      end

      res
    end


    sig { params(accounting_contact: ::UnifiedRubySDK::Shared::AccountingContact, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchAccountingContactResponse) }
    def patch_accounting_contact(accounting_contact, connection_id, id, fields_ = nil)
      # patch_accounting_contact - Update a contact
      request = ::UnifiedRubySDK::Operations::PatchAccountingContactRequest.new(
        
        accounting_contact: accounting_contact,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchAccountingContactRequest,
        base_url,
        '/accounting/{connection_id}/contact/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_contact, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchAccountingContactRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchAccountingContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::AccountingContact)
          res.accounting_contact = out
        end
      end

      res
    end


    sig { params(crm_contact: ::UnifiedRubySDK::Shared::CrmContact, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchCrmContactResponse) }
    def patch_crm_contact(crm_contact, connection_id, id, fields_ = nil)
      # patch_crm_contact - Update a contact
      request = ::UnifiedRubySDK::Operations::PatchCrmContactRequest.new(
        
        crm_contact: crm_contact,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchCrmContactRequest,
        base_url,
        '/crm/{connection_id}/contact/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_contact, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchCrmContactRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchCrmContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::CrmContact)
          res.crm_contact = out
        end
      end

      res
    end


    sig { params(uc_contact: ::UnifiedRubySDK::Shared::UcContact, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchUcContactResponse) }
    def patch_uc_contact(uc_contact, connection_id, id, fields_ = nil)
      # patch_uc_contact - Update a contact
      request = ::UnifiedRubySDK::Operations::PatchUcContactRequest.new(
        
        uc_contact: uc_contact,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchUcContactRequest,
        base_url,
        '/uc/{connection_id}/contact/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :uc_contact, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchUcContactRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchUcContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::UcContact)
          res.uc_contact = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveAccountingContactResponse) }
    def remove_accounting_contact(connection_id, id)
      # remove_accounting_contact - Remove a contact
      request = ::UnifiedRubySDK::Operations::RemoveAccountingContactRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveAccountingContactRequest,
        base_url,
        '/accounting/{connection_id}/contact/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveAccountingContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
        res.headers = r.headers
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveCrmContactResponse) }
    def remove_crm_contact(connection_id, id)
      # remove_crm_contact - Remove a contact
      request = ::UnifiedRubySDK::Operations::RemoveCrmContactRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveCrmContactRequest,
        base_url,
        '/crm/{connection_id}/contact/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveCrmContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
        res.headers = r.headers
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveUcContactResponse) }
    def remove_uc_contact(connection_id, id)
      # remove_uc_contact - Remove a contact
      request = ::UnifiedRubySDK::Operations::RemoveUcContactRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveUcContactRequest,
        base_url,
        '/uc/{connection_id}/contact/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveUcContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
        res.headers = r.headers
      end

      res
    end


    sig { params(accounting_contact: ::UnifiedRubySDK::Shared::AccountingContact, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateAccountingContactResponse) }
    def update_accounting_contact(accounting_contact, connection_id, id, fields_ = nil)
      # update_accounting_contact - Update a contact
      request = ::UnifiedRubySDK::Operations::UpdateAccountingContactRequest.new(
        
        accounting_contact: accounting_contact,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateAccountingContactRequest,
        base_url,
        '/accounting/{connection_id}/contact/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_contact, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateAccountingContactRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateAccountingContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::AccountingContact)
          res.accounting_contact = out
        end
      end

      res
    end


    sig { params(crm_contact: ::UnifiedRubySDK::Shared::CrmContact, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateCrmContactResponse) }
    def update_crm_contact(crm_contact, connection_id, id, fields_ = nil)
      # update_crm_contact - Update a contact
      request = ::UnifiedRubySDK::Operations::UpdateCrmContactRequest.new(
        
        crm_contact: crm_contact,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateCrmContactRequest,
        base_url,
        '/crm/{connection_id}/contact/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_contact, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateCrmContactRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateCrmContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::CrmContact)
          res.crm_contact = out
        end
      end

      res
    end


    sig { params(uc_contact: ::UnifiedRubySDK::Shared::UcContact, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateUcContactResponse) }
    def update_uc_contact(uc_contact, connection_id, id, fields_ = nil)
      # update_uc_contact - Update a contact
      request = ::UnifiedRubySDK::Operations::UpdateUcContactRequest.new(
        
        uc_contact: uc_contact,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateUcContactRequest,
        base_url,
        '/uc/{connection_id}/contact/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :uc_contact, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateUcContactRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateUcContactResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::UcContact)
          res.uc_contact = out
        end
      end

      res
    end
  end
end
