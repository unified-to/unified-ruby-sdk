# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_webhook_meta'

module UnifiedRubySDK
  module Shared

    class Event < T::Enum
      enums do
        UPDATED = new('updated')
        CREATED = new('created')
      end
    end



    class ObjectType < T::Enum
      enums do
        ACCOUNTING_ACCOUNT = new('accounting_account')
        ACCOUNTING_TRANSACTION = new('accounting_transaction')
        ACCOUNTING_CUSTOMER = new('accounting_customer')
        ACCOUNTING_INVOICE = new('accounting_invoice')
        ACCOUNTING_PAYMENT = new('accounting_payment')
        ATS_APPLICATION = new('ats_application')
        ATS_APPLICATIONSTATUS = new('ats_applicationstatus')
        ATS_CANDIDATE = new('ats_candidate')
        ATS_DOCUMENT = new('ats_document')
        ATS_INTERVIEW = new('ats_interview')
        ATS_JOB = new('ats_job')
        ATS_SCORECARD = new('ats_scorecard')
        CRM_COMPANY = new('crm_company')
        CRM_CONTACT = new('crm_contact')
        CRM_DEAL = new('crm_deal')
        CRM_EVENT = new('crm_event')
        CRM_FILE = new('crm_file')
        CRM_LEAD = new('crm_lead')
        CRM_PIPELINE = new('crm_pipeline')
        HRIS_EMPLOYEE = new('hris_employee')
        HRIS_GROUP = new('hris_group')
        MARTECH_LIST = new('martech_list')
        MARTECH_MEMBER = new('martech_member')
        PASSTHROUGH = new('passthrough')
        TICKETING_NOTE = new('ticketing_note')
        TICKETING_TICKET = new('ticketing_ticket')
        TICKETING_CUSTOMER = new('ticketing_customer')
        UC_CONTACT = new('uc_contact')
        UC_CALL = new('uc_call')
        ENRICH_PERSON = new('enrich_person')
        ENRICH_COMPANY = new('enrich_company')
      end
    end



    class WebhookWebhookType < T::Enum
      enums do
        VIRTUAL = new('virtual')
        NONE = new('none')
        NATIVE = new('native')
      end
    end


    # A webhook is used to POST new/updated information to your server.
    class Webhook < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :event, Shared::Event, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('event'), 'decoder': Utils.enum_from_string(Shared::Event, false) } }

      field :events, T::Array[Shared::PropertyWebhookEvents], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('events') } }

      field :hook_url, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('hook_url') } }

      field :interval, Float, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('interval') } }

      field :object_type, Shared::ObjectType, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('object_type'), 'decoder': Utils.enum_from_string(Shared::ObjectType, false) } }

      field :checked_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('checked_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :connection_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('connection_id') } }

      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :environment, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('environment') } }

      field :fields, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('fields') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :include_raw, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('include_raw') } }

      field :integration_type, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('integration_type') } }

      field :meta, T.nilable(Shared::PropertyWebhookMeta), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('meta') } }
      # An array of the most revent virtual webhook runs
      field :runs, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('runs') } }
      # integration-specific subscriptions IDs
      field :subscriptions, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('subscriptions') } }

      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :webhook_type, T.nilable(Shared::WebhookWebhookType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('webhook_type'), 'decoder': Utils.enum_from_string(Shared::WebhookWebhookType, true) } }

      field :workspace_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('workspace_id') } }


      sig { params(event: Shared::Event, events: T::Array[Shared::PropertyWebhookEvents], hook_url: String, interval: Float, object_type: Shared::ObjectType, checked_at: T.nilable(DateTime), connection_id: T.nilable(String), created_at: T.nilable(DateTime), environment: T.nilable(String), fields: T.nilable(String), id: T.nilable(String), include_raw: T.nilable(T::Boolean), integration_type: T.nilable(String), meta: T.nilable(Shared::PropertyWebhookMeta), runs: T.nilable(T::Array[String]), subscriptions: T.nilable(T::Array[String]), updated_at: T.nilable(DateTime), webhook_type: T.nilable(Shared::WebhookWebhookType), workspace_id: T.nilable(String)).void }
      def initialize(event: nil, events: nil, hook_url: nil, interval: nil, object_type: nil, checked_at: nil, connection_id: nil, created_at: nil, environment: nil, fields: nil, id: nil, include_raw: nil, integration_type: nil, meta: nil, runs: nil, subscriptions: nil, updated_at: nil, webhook_type: nil, workspace_id: nil)
        @event = event
        @events = events
        @hook_url = hook_url
        @interval = interval
        @object_type = object_type
        @checked_at = checked_at
        @connection_id = connection_id
        @created_at = created_at
        @environment = environment
        @fields = fields
        @id = id
        @include_raw = include_raw
        @integration_type = integration_type
        @meta = meta
        @runs = runs
        @subscriptions = subscriptions
        @updated_at = updated_at
        @webhook_type = webhook_type
        @workspace_id = workspace_id
      end
    end
  end
end
