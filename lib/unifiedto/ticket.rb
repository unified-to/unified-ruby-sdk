# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Ticket

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(connection_id: String, ticketing_ticket: T.nilable(Shared::TicketingTicket)).returns(Utils::FieldAugmented) }
    def create_ticketing_ticket(connection_id, ticketing_ticket = nil)
      # create_ticketing_ticket - Create a ticket
      request = Operations::CreateTicketingTicketRequest.new(
        
        connection_id: connection_id,
        ticketing_ticket: ticketing_ticket
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateTicketingTicketRequest,
        base_url,
        '/ticketing/{connection_id}/ticket',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_ticket, :json)
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

      res = Operations::CreateTicketingTicketResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TicketingTicket)
          res.ticketing_ticket = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_ticketing_ticket(connection_id, id, fields = nil)
      # get_ticketing_ticket - Retrieve a ticket
      request = Operations::GetTicketingTicketRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetTicketingTicketRequest,
        base_url,
        '/ticketing/{connection_id}/ticket/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetTicketingTicketRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetTicketingTicketResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TicketingTicket)
          res.ticketing_ticket = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListTicketingTicketsRequest)).returns(Utils::FieldAugmented) }
    def list_ticketing_tickets(request)
      # list_ticketing_tickets - List all tickets
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListTicketingTicketsRequest,
        base_url,
        '/ticketing/{connection_id}/ticket',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListTicketingTicketsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListTicketingTicketsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::TicketingTicket])
          res.ticketing_tickets = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, ticketing_ticket: T.nilable(Shared::TicketingTicket)).returns(Utils::FieldAugmented) }
    def patch_ticketing_ticket(connection_id, id, ticketing_ticket = nil)
      # patch_ticketing_ticket - Update a ticket
      request = Operations::PatchTicketingTicketRequest.new(
        
        connection_id: connection_id,
        id: id,
        ticketing_ticket: ticketing_ticket
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchTicketingTicketRequest,
        base_url,
        '/ticketing/{connection_id}/ticket/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_ticket, :json)
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

      res = Operations::PatchTicketingTicketResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TicketingTicket)
          res.ticketing_ticket = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_ticketing_ticket(connection_id, id)
      # remove_ticketing_ticket - Remove a ticket
      request = Operations::RemoveTicketingTicketRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveTicketingTicketRequest,
        base_url,
        '/ticketing/{connection_id}/ticket/{id}',
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

      res = Operations::RemoveTicketingTicketResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end

    sig { params(connection_id: String, id: String, ticketing_ticket: T.nilable(Shared::TicketingTicket)).returns(Utils::FieldAugmented) }
    def update_ticketing_ticket(connection_id, id, ticketing_ticket = nil)
      # update_ticketing_ticket - Update a ticket
      request = Operations::UpdateTicketingTicketRequest.new(
        
        connection_id: connection_id,
        id: id,
        ticketing_ticket: ticketing_ticket
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateTicketingTicketRequest,
        base_url,
        '/ticketing/{connection_id}/ticket/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_ticket, :json)
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

      res = Operations::UpdateTicketingTicketResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TicketingTicket)
          res.ticketing_ticket = out
        end
      end
      res
    end
  end
end
