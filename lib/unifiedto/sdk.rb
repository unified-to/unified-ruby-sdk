# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'
module UnifiedRubySDK
  extend T::Sig

  class UnifiedTo
    extend T::Sig

    attr_accessor :accounting, :account, :customer, :invoice, :item, :organization, :payment, :taxrate, :transaction, :ats, :application, :applicationstatus, :candidate, :document, :interview, :job, :scorecard, :crm, :company, :contact, :deal, :event, :file, :lead, :pipeline, :enrich, :person, :hris, :employee, :group, :martech, :list, :member, :passthrough, :storage, :ticketing, :note, :ticket, :uc, :call, :unified, :apicall, :connection, :integration, :auth, :login, :webhook

    attr_accessor :security, :language, :sdk_version, :gen_version

    sig do
      params(security: T.nilable(Shared::Security),
             server_idx: Integer,
             server_url: String,
             url_params: T::Hash[Symbol, String],
             client: Faraday::Request).void
    end
    def initialize(security: nil,
                   server_idx: nil,
                   server_url: nil,
                   url_params: nil,
                   client: nil)

      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [Shared::Security] security The security details required for authentication
      # @param [Integer] server_idx The index of the server to use for all operations
      # @param [String] server_url The server URL to use for all operations
      # @param [Hash<Symbol, String>] url_params Parameters to optionally template the server URL with
      # @param [Faraday::Request] client The faraday HTTP client to use for all operations

      if client.nil?
        client = Faraday.new(request: {
                          params_encoder: Faraday::FlatParamsEncoder
                        }) do |f|
          f.request :multipart, {}
          # f.response :logger
        end
      end

      if !server_url.nil?
        if !url_params.nil?
          server_url = Utils.template_url(server_url, url_params)
        end
      end
      server_idx = 0 if server_idx.nil?

      

      @sdk_configuration = SDKConfiguration.new(client, security, server_url, server_idx)
      init_sdks
    end

    sig { params(params: T.nilable(T::Hash[Symbol, String])).void }
    def config_server_url(params)
      if !params.nil?
        @server_url = Utils.template_url(@server_url, params)
      end
      init_sdks
    end

    sig { params(security: Shared::Security).void }
    def config_security(security)
      @security = security
      @sdk_configuration.security = security
    end

    sig { void }
    def init_sdks
      @accounting = Accounting.new(@sdk_configuration)
      @account = Account.new(@sdk_configuration)
      @customer = Customer.new(@sdk_configuration)
      @invoice = Invoice.new(@sdk_configuration)
      @item = Item.new(@sdk_configuration)
      @organization = Organization.new(@sdk_configuration)
      @payment = Payment.new(@sdk_configuration)
      @taxrate = Taxrate.new(@sdk_configuration)
      @transaction = Transaction.new(@sdk_configuration)
      @ats = Ats.new(@sdk_configuration)
      @application = Application.new(@sdk_configuration)
      @applicationstatus = Applicationstatus.new(@sdk_configuration)
      @candidate = Candidate.new(@sdk_configuration)
      @document = Document.new(@sdk_configuration)
      @interview = Interview.new(@sdk_configuration)
      @job = Job.new(@sdk_configuration)
      @scorecard = Scorecard.new(@sdk_configuration)
      @crm = Crm.new(@sdk_configuration)
      @company = Company.new(@sdk_configuration)
      @contact = Contact.new(@sdk_configuration)
      @deal = Deal.new(@sdk_configuration)
      @event = Event.new(@sdk_configuration)
      @file = File.new(@sdk_configuration)
      @lead = Lead.new(@sdk_configuration)
      @pipeline = Pipeline.new(@sdk_configuration)
      @enrich = Enrich.new(@sdk_configuration)
      @person = Person.new(@sdk_configuration)
      @hris = Hris.new(@sdk_configuration)
      @employee = Employee.new(@sdk_configuration)
      @group = Group.new(@sdk_configuration)
      @martech = Martech.new(@sdk_configuration)
      @list = List.new(@sdk_configuration)
      @member = Member.new(@sdk_configuration)
      @passthrough = Passthrough.new(@sdk_configuration)
      @storage = Storage.new(@sdk_configuration)
      @ticketing = Ticketing.new(@sdk_configuration)
      @note = Note.new(@sdk_configuration)
      @ticket = Ticket.new(@sdk_configuration)
      @uc = Uc.new(@sdk_configuration)
      @call = Call.new(@sdk_configuration)
      @unified = Unified.new(@sdk_configuration)
      @apicall = Apicall.new(@sdk_configuration)
      @connection = Connection.new(@sdk_configuration)
      @integration = Integration.new(@sdk_configuration)
      @auth = Auth.new(@sdk_configuration)
      @login = Login.new(@sdk_configuration)
      @webhook = Webhook.new(@sdk_configuration)
    end
  end
end
