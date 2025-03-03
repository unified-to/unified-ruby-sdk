# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig

  class UnifiedTo
    extend T::Sig

    attr_accessor :accounting, :account, :contact, :invoice, :journal, :order, :organization, :taxrate, :transaction, :ats, :activity, :application, :applicationstatus, :candidate, :company, :document, :interview, :job, :scorecard, :calendar, :busy, :event, :link, :recording, :commerce, :collection, :inventory, :item, :location, :crm, :deal, :lead, :pipeline, :enrich, :person, :genai, :model, :prompt, :hris, :employee, :group, :payslip, :timeoff, :kms, :comment, :page, :space, :lms, :class_, :course, :instructor, :student, :martech, :list, :member, :messaging, :channel, :message, :metadata, :passthrough, :payment, :payout, :refund, :subscription, :repo, :branch, :commit, :pullrequest, :repository, :scim, :user, :storage, :file, :task, :project, :ticketing, :customer, :note, :ticket, :uc, :call, :unified, :apicall, :connection, :integration, :auth, :login, :issue, :webhook

    sig do
      params(client: Faraday::Request,
             security: T.nilable(Shared::Security),
             server_idx: Integer,
             server_url: String,
             url_params: T::Hash[Symbol, String]).void
    end
    def initialize(client: nil,
                   security: nil,
                   server_idx: nil,
                   server_url: nil,
                   url_params: nil)

      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [Faraday::Request] client The faraday HTTP client to use for all operations
      # @param [Shared::Security] security The security details required for authentication
      # @param [::Integer] server_idx The index of the server to use for all operations
      # @param [::String] server_url The server URL to use for all operations
      # @param [::Hash<::Symbol, ::String>] url_params Parameters to optionally template the server URL with

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

    sig { params(server_url: String).void }
    def config_server_url(server_url)
      @sdk_configuration.server_url = server_url
      init_sdks
    end

    sig { params(server_idx: Integer).void }
    def config_server(server_idx)
      raise StandardError, "Invalid server index #{server_idx}" if server_idx.negative? || server_idx >= SERVERS.length
      @sdk_configuration.server_idx = server_idx
      init_sdks
    end

    sig { params(security: ::UnifiedRubySDK::Shared::Security).void }
    def config_security(security)
      @sdk_configuration.security = security
    end

    sig { void }
    def init_sdks
      @accounting = Accounting.new(@sdk_configuration)
      @account = Account.new(@sdk_configuration)
      @contact = Contact.new(@sdk_configuration)
      @invoice = Invoice.new(@sdk_configuration)
      @journal = Journal.new(@sdk_configuration)
      @order = Order.new(@sdk_configuration)
      @organization = Organization.new(@sdk_configuration)
      @taxrate = Taxrate.new(@sdk_configuration)
      @transaction = Transaction.new(@sdk_configuration)
      @ats = Ats.new(@sdk_configuration)
      @activity = Activity.new(@sdk_configuration)
      @application = Application.new(@sdk_configuration)
      @applicationstatus = Applicationstatus.new(@sdk_configuration)
      @candidate = Candidate.new(@sdk_configuration)
      @company = Company.new(@sdk_configuration)
      @document = Document.new(@sdk_configuration)
      @interview = Interview.new(@sdk_configuration)
      @job = Job.new(@sdk_configuration)
      @scorecard = Scorecard.new(@sdk_configuration)
      @calendar = Calendar.new(@sdk_configuration)
      @busy = Busy.new(@sdk_configuration)
      @event = Event.new(@sdk_configuration)
      @link = Link.new(@sdk_configuration)
      @recording = Recording.new(@sdk_configuration)
      @commerce = Commerce.new(@sdk_configuration)
      @collection = Collection.new(@sdk_configuration)
      @inventory = Inventory.new(@sdk_configuration)
      @item = Item.new(@sdk_configuration)
      @location = Location.new(@sdk_configuration)
      @crm = Crm.new(@sdk_configuration)
      @deal = Deal.new(@sdk_configuration)
      @lead = Lead.new(@sdk_configuration)
      @pipeline = Pipeline.new(@sdk_configuration)
      @enrich = Enrich.new(@sdk_configuration)
      @person = Person.new(@sdk_configuration)
      @genai = Genai.new(@sdk_configuration)
      @model = Model.new(@sdk_configuration)
      @prompt = Prompt.new(@sdk_configuration)
      @hris = Hris.new(@sdk_configuration)
      @employee = Employee.new(@sdk_configuration)
      @group = Group.new(@sdk_configuration)
      @payslip = Payslip.new(@sdk_configuration)
      @timeoff = Timeoff.new(@sdk_configuration)
      @kms = Kms.new(@sdk_configuration)
      @comment = Comment.new(@sdk_configuration)
      @page = Page.new(@sdk_configuration)
      @space = Space.new(@sdk_configuration)
      @lms = Lms.new(@sdk_configuration)
      @class_ = Class.new(@sdk_configuration)
      @course = Course.new(@sdk_configuration)
      @instructor = Instructor.new(@sdk_configuration)
      @student = Student.new(@sdk_configuration)
      @martech = Martech.new(@sdk_configuration)
      @list = List.new(@sdk_configuration)
      @member = Member.new(@sdk_configuration)
      @messaging = Messaging.new(@sdk_configuration)
      @channel = Channel.new(@sdk_configuration)
      @message = Message.new(@sdk_configuration)
      @metadata = Metadata.new(@sdk_configuration)
      @passthrough = Passthrough.new(@sdk_configuration)
      @payment = Payment.new(@sdk_configuration)
      @payout = Payout.new(@sdk_configuration)
      @refund = Refund.new(@sdk_configuration)
      @subscription = Subscription.new(@sdk_configuration)
      @repo = Repo.new(@sdk_configuration)
      @branch = Branch.new(@sdk_configuration)
      @commit = Commit.new(@sdk_configuration)
      @pullrequest = Pullrequest.new(@sdk_configuration)
      @repository = Repository.new(@sdk_configuration)
      @scim = Scim.new(@sdk_configuration)
      @user = User.new(@sdk_configuration)
      @storage = Storage.new(@sdk_configuration)
      @file = File.new(@sdk_configuration)
      @task = Task.new(@sdk_configuration)
      @project = Project.new(@sdk_configuration)
      @ticketing = Ticketing.new(@sdk_configuration)
      @customer = Customer.new(@sdk_configuration)
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
      @issue = Issue.new(@sdk_configuration)
      @webhook = Webhook.new(@sdk_configuration)
    end
  end
end
