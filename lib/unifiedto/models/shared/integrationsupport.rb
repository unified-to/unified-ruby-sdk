# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_integrationsupport_inbound_fields'
require_relative '../shared/property_integrationsupport_outbound_fields'

module OpenApiSDK
  module Shared

    class WebhookType < T::Enum
      enums do
        VIRTUAL = new('virtual')
        NONE = new('none')
        NATIVE = new('native')
      end
    end



    class IntegrationSupport < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :inbound_fields, T.nilable(Shared::PropertyIntegrationSupportInboundFields), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('inbound_fields') } }

      field :list_agent_id, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_agent_id') } }

      field :list_application_id, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_application_id') } }

      field :list_candidate_id, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_candidate_id') } }

      field :list_company_id, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_company_id') } }

      field :list_contact_id, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_contact_id') } }

      field :list_customer_id, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_customer_id') } }

      field :list_deal_id, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_deal_id') } }

      field :list_invoice_id, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_invoice_id') } }

      field :list_job_id, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_job_id') } }

      field :list_limit, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_limit') } }

      field :list_offset, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_offset') } }

      field :list_order, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_order') } }

      field :list_query, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_query') } }

      field :list_sort_by_created_at, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_sort_by_created_at') } }

      field :list_sort_by_name, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_sort_by_name') } }

      field :list_sort_by_updated_at, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_sort_by_updated_at') } }

      field :list_updated_gte, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('list_updated_gte') } }

      field :methods, T.nilable(T::Hash[Symbol, T::Boolean]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('methods') } }

      field :outbound_fields, T.nilable(Shared::PropertyIntegrationSupportOutboundFields), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('outbound_fields') } }

      field :search_domain, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('search_domain') } }

      field :search_email, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('search_email') } }

      field :search_linkedin_url, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('search_linkedin_url') } }

      field :search_name, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('search_name') } }

      field :search_twitter, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('search_twitter') } }

      field :webhook_events, T.nilable(T::Array[Shared::PropertyIntegrationSupportWebhookEvents]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('webhook_events') } }

      field :webhook_type, T.nilable(Shared::WebhookType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('webhook_type'), 'decoder': Utils.enum_from_string(Shared::WebhookType, true) } }


      sig { params(inbound_fields: T.nilable(Shared::PropertyIntegrationSupportInboundFields), list_agent_id: T.nilable(T::Boolean), list_application_id: T.nilable(T::Boolean), list_candidate_id: T.nilable(T::Boolean), list_company_id: T.nilable(T::Boolean), list_contact_id: T.nilable(T::Boolean), list_customer_id: T.nilable(T::Boolean), list_deal_id: T.nilable(T::Boolean), list_invoice_id: T.nilable(T::Boolean), list_job_id: T.nilable(T::Boolean), list_limit: T.nilable(T::Boolean), list_offset: T.nilable(T::Boolean), list_order: T.nilable(T::Boolean), list_query: T.nilable(T::Boolean), list_sort_by_created_at: T.nilable(T::Boolean), list_sort_by_name: T.nilable(T::Boolean), list_sort_by_updated_at: T.nilable(T::Boolean), list_updated_gte: T.nilable(T::Boolean), methods: T.nilable(T::Hash[Symbol, T::Boolean]), outbound_fields: T.nilable(Shared::PropertyIntegrationSupportOutboundFields), search_domain: T.nilable(T::Boolean), search_email: T.nilable(T::Boolean), search_linkedin_url: T.nilable(T::Boolean), search_name: T.nilable(T::Boolean), search_twitter: T.nilable(T::Boolean), webhook_events: T.nilable(T::Array[Shared::PropertyIntegrationSupportWebhookEvents]), webhook_type: T.nilable(Shared::WebhookType)).void }
      def initialize(inbound_fields: nil, list_agent_id: nil, list_application_id: nil, list_candidate_id: nil, list_company_id: nil, list_contact_id: nil, list_customer_id: nil, list_deal_id: nil, list_invoice_id: nil, list_job_id: nil, list_limit: nil, list_offset: nil, list_order: nil, list_query: nil, list_sort_by_created_at: nil, list_sort_by_name: nil, list_sort_by_updated_at: nil, list_updated_gte: nil, methods: nil, outbound_fields: nil, search_domain: nil, search_email: nil, search_linkedin_url: nil, search_name: nil, search_twitter: nil, webhook_events: nil, webhook_type: nil)
        @inbound_fields = inbound_fields
        @list_agent_id = list_agent_id
        @list_application_id = list_application_id
        @list_candidate_id = list_candidate_id
        @list_company_id = list_company_id
        @list_contact_id = list_contact_id
        @list_customer_id = list_customer_id
        @list_deal_id = list_deal_id
        @list_invoice_id = list_invoice_id
        @list_job_id = list_job_id
        @list_limit = list_limit
        @list_offset = list_offset
        @list_order = list_order
        @list_query = list_query
        @list_sort_by_created_at = list_sort_by_created_at
        @list_sort_by_name = list_sort_by_name
        @list_sort_by_updated_at = list_sort_by_updated_at
        @list_updated_gte = list_updated_gte
        @methods = methods
        @outbound_fields = outbound_fields
        @search_domain = search_domain
        @search_email = search_email
        @search_linkedin_url = search_linkedin_url
        @search_name = search_name
        @search_twitter = search_twitter
        @webhook_events = webhook_events
        @webhook_type = webhook_type
      end
    end
  end
end
