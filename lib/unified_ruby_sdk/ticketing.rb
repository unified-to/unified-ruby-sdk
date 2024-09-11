# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Ticketing
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, ticketing_customer: T.nilable(::UnifiedRubySDK::Shared::TicketingCustomer), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateTicketingCustomerResponse) }
    def create_ticketing_customer(connection_id, ticketing_customer = nil, fields_ = nil)
      # create_ticketing_customer - Create a customer
      request = ::UnifiedRubySDK::Operations::CreateTicketingCustomerRequest.new(
        
        connection_id: connection_id,
        ticketing_customer: ticketing_customer,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateTicketingCustomerRequest,
        base_url,
        '/ticketing/{connection_id}/customer',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_customer, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateTicketingCustomerRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateTicketingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingCustomer)
          res.ticketing_customer = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, ticketing_note: T.nilable(::UnifiedRubySDK::Shared::TicketingNote), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateTicketingNoteResponse) }
    def create_ticketing_note(connection_id, ticketing_note = nil, fields_ = nil)
      # create_ticketing_note - Create a note
      request = ::UnifiedRubySDK::Operations::CreateTicketingNoteRequest.new(
        
        connection_id: connection_id,
        ticketing_note: ticketing_note,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateTicketingNoteRequest,
        base_url,
        '/ticketing/{connection_id}/note',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_note, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateTicketingNoteRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateTicketingNoteResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingNote)
          res.ticketing_note = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, ticketing_ticket: T.nilable(::UnifiedRubySDK::Shared::TicketingTicket), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateTicketingTicketResponse) }
    def create_ticketing_ticket(connection_id, ticketing_ticket = nil, fields_ = nil)
      # create_ticketing_ticket - Create a ticket
      request = ::UnifiedRubySDK::Operations::CreateTicketingTicketRequest.new(
        
        connection_id: connection_id,
        ticketing_ticket: ticketing_ticket,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateTicketingTicketRequest,
        base_url,
        '/ticketing/{connection_id}/ticket',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_ticket, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateTicketingTicketRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateTicketingTicketResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingTicket)
          res.ticketing_ticket = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetTicketingCustomerResponse) }
    def get_ticketing_customer(connection_id, id, fields_ = nil)
      # get_ticketing_customer - Retrieve a customer
      request = ::UnifiedRubySDK::Operations::GetTicketingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetTicketingCustomerRequest,
        base_url,
        '/ticketing/{connection_id}/customer/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetTicketingCustomerRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetTicketingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingCustomer)
          res.ticketing_customer = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetTicketingNoteResponse) }
    def get_ticketing_note(connection_id, id, fields_ = nil)
      # get_ticketing_note - Retrieve a note
      request = ::UnifiedRubySDK::Operations::GetTicketingNoteRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetTicketingNoteRequest,
        base_url,
        '/ticketing/{connection_id}/note/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetTicketingNoteRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetTicketingNoteResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingNote)
          res.ticketing_note = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetTicketingTicketResponse) }
    def get_ticketing_ticket(connection_id, id, fields_ = nil)
      # get_ticketing_ticket - Retrieve a ticket
      request = ::UnifiedRubySDK::Operations::GetTicketingTicketRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetTicketingTicketRequest,
        base_url,
        '/ticketing/{connection_id}/ticket/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetTicketingTicketRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetTicketingTicketResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingTicket)
          res.ticketing_ticket = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListTicketingCustomersRequest)).returns(::UnifiedRubySDK::Operations::ListTicketingCustomersResponse) }
    def list_ticketing_customers(request)
      # list_ticketing_customers - List all customers
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListTicketingCustomersRequest,
        base_url,
        '/ticketing/{connection_id}/customer',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListTicketingCustomersRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListTicketingCustomersResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::TicketingCustomer])
          res.ticketing_customers = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListTicketingNotesRequest)).returns(::UnifiedRubySDK::Operations::ListTicketingNotesResponse) }
    def list_ticketing_notes(request)
      # list_ticketing_notes - List all notes
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListTicketingNotesRequest,
        base_url,
        '/ticketing/{connection_id}/note',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListTicketingNotesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListTicketingNotesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::TicketingNote])
          res.ticketing_notes = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListTicketingTicketsRequest)).returns(::UnifiedRubySDK::Operations::ListTicketingTicketsResponse) }
    def list_ticketing_tickets(request)
      # list_ticketing_tickets - List all tickets
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListTicketingTicketsRequest,
        base_url,
        '/ticketing/{connection_id}/ticket',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListTicketingTicketsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListTicketingTicketsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::TicketingTicket])
          res.ticketing_tickets = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, ticketing_customer: T.nilable(::UnifiedRubySDK::Shared::TicketingCustomer), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchTicketingCustomerResponse) }
    def patch_ticketing_customer(connection_id, id, ticketing_customer = nil, fields_ = nil)
      # patch_ticketing_customer - Update a customer
      request = ::UnifiedRubySDK::Operations::PatchTicketingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id,
        ticketing_customer: ticketing_customer,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchTicketingCustomerRequest,
        base_url,
        '/ticketing/{connection_id}/customer/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_customer, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchTicketingCustomerRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchTicketingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingCustomer)
          res.ticketing_customer = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, ticketing_note: T.nilable(::UnifiedRubySDK::Shared::TicketingNote), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchTicketingNoteResponse) }
    def patch_ticketing_note(connection_id, id, ticketing_note = nil, fields_ = nil)
      # patch_ticketing_note - Update a note
      request = ::UnifiedRubySDK::Operations::PatchTicketingNoteRequest.new(
        
        connection_id: connection_id,
        id: id,
        ticketing_note: ticketing_note,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchTicketingNoteRequest,
        base_url,
        '/ticketing/{connection_id}/note/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_note, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchTicketingNoteRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchTicketingNoteResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingNote)
          res.ticketing_note = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, ticketing_ticket: T.nilable(::UnifiedRubySDK::Shared::TicketingTicket), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchTicketingTicketResponse) }
    def patch_ticketing_ticket(connection_id, id, ticketing_ticket = nil, fields_ = nil)
      # patch_ticketing_ticket - Update a ticket
      request = ::UnifiedRubySDK::Operations::PatchTicketingTicketRequest.new(
        
        connection_id: connection_id,
        id: id,
        ticketing_ticket: ticketing_ticket,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchTicketingTicketRequest,
        base_url,
        '/ticketing/{connection_id}/ticket/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_ticket, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchTicketingTicketRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchTicketingTicketResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingTicket)
          res.ticketing_ticket = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveTicketingCustomerResponse) }
    def remove_ticketing_customer(connection_id, id)
      # remove_ticketing_customer - Remove a customer
      request = ::UnifiedRubySDK::Operations::RemoveTicketingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveTicketingCustomerRequest,
        base_url,
        '/ticketing/{connection_id}/customer/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveTicketingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveTicketingNoteResponse) }
    def remove_ticketing_note(connection_id, id)
      # remove_ticketing_note - Remove a note
      request = ::UnifiedRubySDK::Operations::RemoveTicketingNoteRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveTicketingNoteRequest,
        base_url,
        '/ticketing/{connection_id}/note/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveTicketingNoteResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveTicketingTicketResponse) }
    def remove_ticketing_ticket(connection_id, id)
      # remove_ticketing_ticket - Remove a ticket
      request = ::UnifiedRubySDK::Operations::RemoveTicketingTicketRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveTicketingTicketRequest,
        base_url,
        '/ticketing/{connection_id}/ticket/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveTicketingTicketResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      
      res
    end


    sig { params(connection_id: ::String, id: ::String, ticketing_customer: T.nilable(::UnifiedRubySDK::Shared::TicketingCustomer), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateTicketingCustomerResponse) }
    def update_ticketing_customer(connection_id, id, ticketing_customer = nil, fields_ = nil)
      # update_ticketing_customer - Update a customer
      request = ::UnifiedRubySDK::Operations::UpdateTicketingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id,
        ticketing_customer: ticketing_customer,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateTicketingCustomerRequest,
        base_url,
        '/ticketing/{connection_id}/customer/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_customer, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateTicketingCustomerRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateTicketingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingCustomer)
          res.ticketing_customer = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, ticketing_note: T.nilable(::UnifiedRubySDK::Shared::TicketingNote), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateTicketingNoteResponse) }
    def update_ticketing_note(connection_id, id, ticketing_note = nil, fields_ = nil)
      # update_ticketing_note - Update a note
      request = ::UnifiedRubySDK::Operations::UpdateTicketingNoteRequest.new(
        
        connection_id: connection_id,
        id: id,
        ticketing_note: ticketing_note,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateTicketingNoteRequest,
        base_url,
        '/ticketing/{connection_id}/note/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_note, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateTicketingNoteRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateTicketingNoteResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingNote)
          res.ticketing_note = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, ticketing_ticket: T.nilable(::UnifiedRubySDK::Shared::TicketingTicket), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateTicketingTicketResponse) }
    def update_ticketing_ticket(connection_id, id, ticketing_ticket = nil, fields_ = nil)
      # update_ticketing_ticket - Update a ticket
      request = ::UnifiedRubySDK::Operations::UpdateTicketingTicketRequest.new(
        
        connection_id: connection_id,
        id: id,
        ticketing_ticket: ticketing_ticket,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateTicketingTicketRequest,
        base_url,
        '/ticketing/{connection_id}/ticket/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_ticket, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateTicketingTicketRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateTicketingTicketResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TicketingTicket)
          res.ticketing_ticket = out
        end
      end
      res
    end
  end
end
