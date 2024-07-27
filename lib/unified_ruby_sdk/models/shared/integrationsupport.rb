# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class IntegrationSupport < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :from_webhook, T.nilable(::UnifiedRubySDK::Shared::FromWebhook), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('from_webhook'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::FromWebhook, true) } }

      field :inbound_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('inbound_fields') } }

      field :list_account_id, T.nilable(::UnifiedRubySDK::Shared::ListAccountId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_account_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListAccountId, true) } }

      field :list_application_id, T.nilable(::UnifiedRubySDK::Shared::ListApplicationId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_application_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListApplicationId, true) } }

      field :list_candidate_id, T.nilable(::UnifiedRubySDK::Shared::ListCandidateId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_candidate_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListCandidateId, true) } }

      field :list_channel_id, T.nilable(::UnifiedRubySDK::Shared::ListChannelId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_channel_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListChannelId, true) } }

      field :list_collection_id, T.nilable(::UnifiedRubySDK::Shared::ListCollectionId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_collection_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListCollectionId, true) } }

      field :list_company_id, T.nilable(::UnifiedRubySDK::Shared::ListCompanyId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_company_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListCompanyId, true) } }

      field :list_contact_id, T.nilable(::UnifiedRubySDK::Shared::ListContactId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_contact_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListContactId, true) } }

      field :list_customer_id, T.nilable(::UnifiedRubySDK::Shared::ListCustomerId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_customer_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListCustomerId, true) } }

      field :list_deal_id, T.nilable(::UnifiedRubySDK::Shared::ListDealId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_deal_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListDealId, true) } }

      field :list_interview_id, T.nilable(::UnifiedRubySDK::Shared::ListInterviewId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_interview_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListInterviewId, true) } }

      field :list_invoice_id, T.nilable(::UnifiedRubySDK::Shared::ListInvoiceId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_invoice_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListInvoiceId, true) } }

      field :list_item_id, T.nilable(::UnifiedRubySDK::Shared::ListItemId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_item_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListItemId, true) } }

      field :list_item_variant_id, T.nilable(::UnifiedRubySDK::Shared::ListItemVariantId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_item_variant_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListItemVariantId, true) } }

      field :list_job_id, T.nilable(::UnifiedRubySDK::Shared::ListJobId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_job_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListJobId, true) } }

      field :list_limit, T.nilable(::UnifiedRubySDK::Shared::ListLimit), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_limit'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListLimit, true) } }

      field :list_link_id, T.nilable(::UnifiedRubySDK::Shared::ListLinkId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_link_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListLinkId, true) } }

      field :list_list_id, T.nilable(::UnifiedRubySDK::Shared::ListListId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_list_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListListId, true) } }

      field :list_location_id, T.nilable(::UnifiedRubySDK::Shared::ListLocationId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_location_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListLocationId, true) } }

      field :list_offset, T.nilable(::UnifiedRubySDK::Shared::ListOffset), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_offset'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListOffset, true) } }

      field :list_order, T.nilable(::UnifiedRubySDK::Shared::ListOrder), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_order'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListOrder, true) } }

      field :list_parent_id, T.nilable(::UnifiedRubySDK::Shared::ListParentId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_parent_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListParentId, true) } }

      field :list_project_id, T.nilable(::UnifiedRubySDK::Shared::ListProjectId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_project_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListProjectId, true) } }

      field :list_query, T.nilable(::UnifiedRubySDK::Shared::ListQuery), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_query'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListQuery, true) } }

      field :list_sort_by_created_at, T.nilable(::UnifiedRubySDK::Shared::ListSortByCreatedAt), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_sort_by_created_at'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListSortByCreatedAt, true) } }

      field :list_sort_by_name, T.nilable(::UnifiedRubySDK::Shared::ListSortByName), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_sort_by_name'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListSortByName, true) } }

      field :list_sort_by_updated_at, T.nilable(::UnifiedRubySDK::Shared::ListSortByUpdatedAt), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_sort_by_updated_at'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListSortByUpdatedAt, true) } }

      field :list_space_id, T.nilable(::UnifiedRubySDK::Shared::ListSpaceId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_space_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListSpaceId, true) } }

      field :list_ticket_id, T.nilable(::UnifiedRubySDK::Shared::ListTicketId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_ticket_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListTicketId, true) } }

      field :list_type, T.nilable(::UnifiedRubySDK::Shared::ListType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListType, true) } }

      field :list_updated_gte, T.nilable(::UnifiedRubySDK::Shared::ListUpdatedGte), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_updated_gte'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListUpdatedGte, true) } }

      field :list_user_id, T.nilable(::UnifiedRubySDK::Shared::ListUserId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_user_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListUserId, true) } }

      field :methods, T.nilable(T::Hash[Symbol, T::Boolean]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('methods') } }

      field :outbound_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('outbound_fields') } }
      # objects that we map from in the integration
      field :raw_objects, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw_objects') } }

      field :search_domain, T.nilable(::UnifiedRubySDK::Shared::SearchDomain), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_domain'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SearchDomain, true) } }

      field :search_email, T.nilable(::UnifiedRubySDK::Shared::SearchEmail), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_email'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SearchEmail, true) } }

      field :search_linkedinurl, T.nilable(::UnifiedRubySDK::Shared::SearchLinkedinurl), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_linkedinurl'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SearchLinkedinurl, true) } }

      field :search_name, T.nilable(::UnifiedRubySDK::Shared::SearchName), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_name'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SearchName, true) } }

      field :search_twitter, T.nilable(::UnifiedRubySDK::Shared::SearchTwitter), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_twitter'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SearchTwitter, true) } }

      field :webhook_events, T.nilable(::UnifiedRubySDK::Shared::PropertyIntegrationSupportWebhookEvents), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('webhook_events') } }


      sig { params(from_webhook: T.nilable(::UnifiedRubySDK::Shared::FromWebhook), inbound_fields: T.nilable(T::Hash[Symbol, ::Object]), list_account_id: T.nilable(::UnifiedRubySDK::Shared::ListAccountId), list_application_id: T.nilable(::UnifiedRubySDK::Shared::ListApplicationId), list_candidate_id: T.nilable(::UnifiedRubySDK::Shared::ListCandidateId), list_channel_id: T.nilable(::UnifiedRubySDK::Shared::ListChannelId), list_collection_id: T.nilable(::UnifiedRubySDK::Shared::ListCollectionId), list_company_id: T.nilable(::UnifiedRubySDK::Shared::ListCompanyId), list_contact_id: T.nilable(::UnifiedRubySDK::Shared::ListContactId), list_customer_id: T.nilable(::UnifiedRubySDK::Shared::ListCustomerId), list_deal_id: T.nilable(::UnifiedRubySDK::Shared::ListDealId), list_interview_id: T.nilable(::UnifiedRubySDK::Shared::ListInterviewId), list_invoice_id: T.nilable(::UnifiedRubySDK::Shared::ListInvoiceId), list_item_id: T.nilable(::UnifiedRubySDK::Shared::ListItemId), list_item_variant_id: T.nilable(::UnifiedRubySDK::Shared::ListItemVariantId), list_job_id: T.nilable(::UnifiedRubySDK::Shared::ListJobId), list_limit: T.nilable(::UnifiedRubySDK::Shared::ListLimit), list_link_id: T.nilable(::UnifiedRubySDK::Shared::ListLinkId), list_list_id: T.nilable(::UnifiedRubySDK::Shared::ListListId), list_location_id: T.nilable(::UnifiedRubySDK::Shared::ListLocationId), list_offset: T.nilable(::UnifiedRubySDK::Shared::ListOffset), list_order: T.nilable(::UnifiedRubySDK::Shared::ListOrder), list_parent_id: T.nilable(::UnifiedRubySDK::Shared::ListParentId), list_project_id: T.nilable(::UnifiedRubySDK::Shared::ListProjectId), list_query: T.nilable(::UnifiedRubySDK::Shared::ListQuery), list_sort_by_created_at: T.nilable(::UnifiedRubySDK::Shared::ListSortByCreatedAt), list_sort_by_name: T.nilable(::UnifiedRubySDK::Shared::ListSortByName), list_sort_by_updated_at: T.nilable(::UnifiedRubySDK::Shared::ListSortByUpdatedAt), list_space_id: T.nilable(::UnifiedRubySDK::Shared::ListSpaceId), list_ticket_id: T.nilable(::UnifiedRubySDK::Shared::ListTicketId), list_type: T.nilable(::UnifiedRubySDK::Shared::ListType), list_updated_gte: T.nilable(::UnifiedRubySDK::Shared::ListUpdatedGte), list_user_id: T.nilable(::UnifiedRubySDK::Shared::ListUserId), methods: T.nilable(T::Hash[Symbol, T::Boolean]), outbound_fields: T.nilable(T::Hash[Symbol, ::Object]), raw_objects: T.nilable(T::Array[::String]), search_domain: T.nilable(::UnifiedRubySDK::Shared::SearchDomain), search_email: T.nilable(::UnifiedRubySDK::Shared::SearchEmail), search_linkedinurl: T.nilable(::UnifiedRubySDK::Shared::SearchLinkedinurl), search_name: T.nilable(::UnifiedRubySDK::Shared::SearchName), search_twitter: T.nilable(::UnifiedRubySDK::Shared::SearchTwitter), webhook_events: T.nilable(::UnifiedRubySDK::Shared::PropertyIntegrationSupportWebhookEvents)).void }
      def initialize(from_webhook: nil, inbound_fields: nil, list_account_id: nil, list_application_id: nil, list_candidate_id: nil, list_channel_id: nil, list_collection_id: nil, list_company_id: nil, list_contact_id: nil, list_customer_id: nil, list_deal_id: nil, list_interview_id: nil, list_invoice_id: nil, list_item_id: nil, list_item_variant_id: nil, list_job_id: nil, list_limit: nil, list_link_id: nil, list_list_id: nil, list_location_id: nil, list_offset: nil, list_order: nil, list_parent_id: nil, list_project_id: nil, list_query: nil, list_sort_by_created_at: nil, list_sort_by_name: nil, list_sort_by_updated_at: nil, list_space_id: nil, list_ticket_id: nil, list_type: nil, list_updated_gte: nil, list_user_id: nil, methods: nil, outbound_fields: nil, raw_objects: nil, search_domain: nil, search_email: nil, search_linkedinurl: nil, search_name: nil, search_twitter: nil, webhook_events: nil)
        @from_webhook = from_webhook
        @inbound_fields = inbound_fields
        @list_account_id = list_account_id
        @list_application_id = list_application_id
        @list_candidate_id = list_candidate_id
        @list_channel_id = list_channel_id
        @list_collection_id = list_collection_id
        @list_company_id = list_company_id
        @list_contact_id = list_contact_id
        @list_customer_id = list_customer_id
        @list_deal_id = list_deal_id
        @list_interview_id = list_interview_id
        @list_invoice_id = list_invoice_id
        @list_item_id = list_item_id
        @list_item_variant_id = list_item_variant_id
        @list_job_id = list_job_id
        @list_limit = list_limit
        @list_link_id = list_link_id
        @list_list_id = list_list_id
        @list_location_id = list_location_id
        @list_offset = list_offset
        @list_order = list_order
        @list_parent_id = list_parent_id
        @list_project_id = list_project_id
        @list_query = list_query
        @list_sort_by_created_at = list_sort_by_created_at
        @list_sort_by_name = list_sort_by_name
        @list_sort_by_updated_at = list_sort_by_updated_at
        @list_space_id = list_space_id
        @list_ticket_id = list_ticket_id
        @list_type = list_type
        @list_updated_gte = list_updated_gte
        @list_user_id = list_user_id
        @methods = methods
        @outbound_fields = outbound_fields
        @raw_objects = raw_objects
        @search_domain = search_domain
        @search_email = search_email
        @search_linkedinurl = search_linkedinurl
        @search_name = search_name
        @search_twitter = search_twitter
        @webhook_events = webhook_events
      end
    end
  end
end
