# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class IntegrationSupport
        extend T::Sig
        include Crystalline::MetadataFields


        field :from_webhook, T.nilable(Models::Shared::FromWebhook), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('from_webhook'), 'decoder': Utils.enum_from_string(Models::Shared::FromWebhook, true) } }

        field :inbound_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('inbound_fields') } }

        field :list_account_id, T.nilable(Models::Shared::ListAccountId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_account_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListAccountId, true) } }

        field :list_application_id, T.nilable(Models::Shared::ListApplicationId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_application_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListApplicationId, true) } }

        field :list_calendar_id, T.nilable(Models::Shared::ListCalendarId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_calendar_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListCalendarId, true) } }

        field :list_call_id, T.nilable(Models::Shared::ListCallId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_call_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListCallId, true) } }

        field :list_candidate_id, T.nilable(Models::Shared::ListCandidateId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_candidate_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListCandidateId, true) } }

        field :list_channel_id, T.nilable(Models::Shared::ListChannelId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_channel_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListChannelId, true) } }

        field :list_class_id, T.nilable(Models::Shared::ListClassId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_class_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListClassId, true) } }

        field :list_collection_id, T.nilable(Models::Shared::ListCollectionId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_collection_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListCollectionId, true) } }

        field :list_company_id, T.nilable(Models::Shared::ListCompanyId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_company_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListCompanyId, true) } }

        field :list_contact_id, T.nilable(Models::Shared::ListContactId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_contact_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListContactId, true) } }

        field :list_course_id, T.nilable(Models::Shared::ListCourseId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_course_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListCourseId, true) } }

        field :list_customer_id, T.nilable(Models::Shared::ListCustomerId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_customer_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListCustomerId, true) } }

        field :list_deal_id, T.nilable(Models::Shared::ListDealId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_deal_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListDealId, true) } }

        field :list_end_le, T.nilable(Models::Shared::ListEndLe), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_end_le'), 'decoder': Utils.enum_from_string(Models::Shared::ListEndLe, true) } }

        field :list_event_id, T.nilable(Models::Shared::ListEventId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_event_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListEventId, true) } }

        field :list_instructor_id, T.nilable(Models::Shared::ListInstructorId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_instructor_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListInstructorId, true) } }

        field :list_interview_id, T.nilable(Models::Shared::ListInterviewId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_interview_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListInterviewId, true) } }

        field :list_invoice_id, T.nilable(Models::Shared::ListInvoiceId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_invoice_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListInvoiceId, true) } }

        field :list_item_id, T.nilable(Models::Shared::ListItemId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_item_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListItemId, true) } }

        field :list_item_variant_id, T.nilable(Models::Shared::ListItemVariantId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_item_variant_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListItemVariantId, true) } }

        field :list_job_id, T.nilable(Models::Shared::ListJobId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_job_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListJobId, true) } }

        field :list_lead_id, T.nilable(Models::Shared::ListLeadId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_lead_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListLeadId, true) } }

        field :list_limit, T.nilable(Models::Shared::ListLimit), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_limit'), 'decoder': Utils.enum_from_string(Models::Shared::ListLimit, true) } }

        field :list_link_id, T.nilable(Models::Shared::ListLinkId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_link_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListLinkId, true) } }

        field :list_list_id, T.nilable(Models::Shared::ListListId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_list_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListListId, true) } }

        field :list_location_id, T.nilable(Models::Shared::ListLocationId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_location_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListLocationId, true) } }

        field :list_offset, T.nilable(Models::Shared::ListOffset), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_offset'), 'decoder': Utils.enum_from_string(Models::Shared::ListOffset, true) } }

        field :list_order, T.nilable(Models::Shared::ListOrder), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_order'), 'decoder': Utils.enum_from_string(Models::Shared::ListOrder, true) } }

        field :list_org_id, T.nilable(Models::Shared::ListOrgId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_org_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListOrgId, true) } }

        field :list_page_id, T.nilable(Models::Shared::ListPageId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_page_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListPageId, true) } }

        field :list_parent_id, T.nilable(Models::Shared::ListParentId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_parent_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListParentId, true) } }

        field :list_project_id, T.nilable(Models::Shared::ListProjectId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_project_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListProjectId, true) } }

        field :list_query, T.nilable(Models::Shared::ListQuery), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_query'), 'decoder': Utils.enum_from_string(Models::Shared::ListQuery, true) } }

        field :list_raw_fields, T.nilable(Models::Shared::ListRawFields), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_raw_fields'), 'decoder': Utils.enum_from_string(Models::Shared::ListRawFields, true) } }

        field :list_repo_id, T.nilable(Models::Shared::ListRepoId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_repo_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListRepoId, true) } }

        field :list_root_id, T.nilable(Models::Shared::ListRootId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_root_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListRootId, true) } }

        field :list_sort_by_created_at, T.nilable(Models::Shared::ListSortByCreatedAt), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_sort_by_created_at'), 'decoder': Utils.enum_from_string(Models::Shared::ListSortByCreatedAt, true) } }

        field :list_sort_by_name, T.nilable(Models::Shared::ListSortByName), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_sort_by_name'), 'decoder': Utils.enum_from_string(Models::Shared::ListSortByName, true) } }

        field :list_sort_by_updated_at, T.nilable(Models::Shared::ListSortByUpdatedAt), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_sort_by_updated_at'), 'decoder': Utils.enum_from_string(Models::Shared::ListSortByUpdatedAt, true) } }

        field :list_space_id, T.nilable(Models::Shared::ListSpaceId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_space_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListSpaceId, true) } }

        field :list_start_gte, T.nilable(Models::Shared::ListStartGte), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_start_gte'), 'decoder': Utils.enum_from_string(Models::Shared::ListStartGte, true) } }

        field :list_student_id, T.nilable(Models::Shared::ListStudentId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_student_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListStudentId, true) } }

        field :list_task_id, T.nilable(Models::Shared::ListTaskId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_task_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListTaskId, true) } }

        field :list_ticket_id, T.nilable(Models::Shared::ListTicketId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_ticket_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListTicketId, true) } }

        field :list_type, T.nilable(Models::Shared::ListType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_type'), 'decoder': Utils.enum_from_string(Models::Shared::ListType, true) } }

        field :list_updated_gte, T.nilable(Models::Shared::ListUpdatedGte), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_updated_gte'), 'decoder': Utils.enum_from_string(Models::Shared::ListUpdatedGte, true) } }

        field :list_user_id, T.nilable(Models::Shared::ListUserId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_user_id'), 'decoder': Utils.enum_from_string(Models::Shared::ListUserId, true) } }

        field :methods, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('methods') } }

        field :native_webhook_parent_id, T.nilable(Models::Shared::NativeWebhookParentId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('native_webhook_parent_id'), 'decoder': Utils.enum_from_string(Models::Shared::NativeWebhookParentId, true) } }

        field :native_webhook_project_id, T.nilable(Models::Shared::NativeWebhookProjectId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('native_webhook_project_id'), 'decoder': Utils.enum_from_string(Models::Shared::NativeWebhookProjectId, true) } }

        field :outbound_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('outbound_fields') } }
        # objects that we map from in the integration
        field :raw_objects, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw_objects') } }

        field :search_domain, T.nilable(Models::Shared::SearchDomain), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_domain'), 'decoder': Utils.enum_from_string(Models::Shared::SearchDomain, true) } }

        field :search_email, T.nilable(Models::Shared::SearchEmail), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_email'), 'decoder': Utils.enum_from_string(Models::Shared::SearchEmail, true) } }

        field :search_linkedinurl, T.nilable(Models::Shared::SearchLinkedinurl), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_linkedinurl'), 'decoder': Utils.enum_from_string(Models::Shared::SearchLinkedinurl, true) } }

        field :search_name, T.nilable(Models::Shared::SearchName), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_name'), 'decoder': Utils.enum_from_string(Models::Shared::SearchName, true) } }

        field :search_twitter, T.nilable(Models::Shared::SearchTwitter), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_twitter'), 'decoder': Utils.enum_from_string(Models::Shared::SearchTwitter, true) } }

        field :slow_fields, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('slow_fields') } }

        field :virtual_webhook_channel_id, T.nilable(Models::Shared::VirtualWebhookChannelId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_channel_id'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookChannelId, true) } }

        field :virtual_webhook_company_id, T.nilable(Models::Shared::VirtualWebhookCompanyId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_company_id'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookCompanyId, true) } }

        field :virtual_webhook_contact_id, T.nilable(Models::Shared::VirtualWebhookContactId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_contact_id'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookContactId, true) } }

        field :virtual_webhook_deal_id, T.nilable(Models::Shared::VirtualWebhookDealId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_deal_id'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookDealId, true) } }

        field :virtual_webhook_job_id, T.nilable(Models::Shared::VirtualWebhookJobId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_job_id'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookJobId, true) } }

        field :virtual_webhook_limit, T.nilable(Models::Shared::VirtualWebhookLimit), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_limit'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookLimit, true) } }

        field :virtual_webhook_parent_id, T.nilable(Models::Shared::VirtualWebhookParentId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_parent_id'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookParentId, true) } }

        field :virtual_webhook_ticket_id, T.nilable(Models::Shared::VirtualWebhookTicketId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_ticket_id'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookTicketId, true) } }

        field :virtual_webhook_type, T.nilable(Models::Shared::VirtualWebhookType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_type'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookType, true) } }

        field :virtual_webhook_updated_gte, T.nilable(Models::Shared::VirtualWebhookUpdatedGte), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_updated_gte'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookUpdatedGte, true) } }

        field :virtual_webhook_user_id, T.nilable(Models::Shared::VirtualWebhookUserId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_user_id'), 'decoder': Utils.enum_from_string(Models::Shared::VirtualWebhookUserId, true) } }

        field :webhook_events, T.nilable(Models::Shared::PropertyIntegrationSupportWebhookEvents), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('webhook_events') } }


        sig { params(from_webhook: T.nilable(Models::Shared::FromWebhook), inbound_fields: T.nilable(T::Hash[Symbol, ::Object]), list_account_id: T.nilable(Models::Shared::ListAccountId), list_application_id: T.nilable(Models::Shared::ListApplicationId), list_calendar_id: T.nilable(Models::Shared::ListCalendarId), list_call_id: T.nilable(Models::Shared::ListCallId), list_candidate_id: T.nilable(Models::Shared::ListCandidateId), list_channel_id: T.nilable(Models::Shared::ListChannelId), list_class_id: T.nilable(Models::Shared::ListClassId), list_collection_id: T.nilable(Models::Shared::ListCollectionId), list_company_id: T.nilable(Models::Shared::ListCompanyId), list_contact_id: T.nilable(Models::Shared::ListContactId), list_course_id: T.nilable(Models::Shared::ListCourseId), list_customer_id: T.nilable(Models::Shared::ListCustomerId), list_deal_id: T.nilable(Models::Shared::ListDealId), list_end_le: T.nilable(Models::Shared::ListEndLe), list_event_id: T.nilable(Models::Shared::ListEventId), list_instructor_id: T.nilable(Models::Shared::ListInstructorId), list_interview_id: T.nilable(Models::Shared::ListInterviewId), list_invoice_id: T.nilable(Models::Shared::ListInvoiceId), list_item_id: T.nilable(Models::Shared::ListItemId), list_item_variant_id: T.nilable(Models::Shared::ListItemVariantId), list_job_id: T.nilable(Models::Shared::ListJobId), list_lead_id: T.nilable(Models::Shared::ListLeadId), list_limit: T.nilable(Models::Shared::ListLimit), list_link_id: T.nilable(Models::Shared::ListLinkId), list_list_id: T.nilable(Models::Shared::ListListId), list_location_id: T.nilable(Models::Shared::ListLocationId), list_offset: T.nilable(Models::Shared::ListOffset), list_order: T.nilable(Models::Shared::ListOrder), list_org_id: T.nilable(Models::Shared::ListOrgId), list_page_id: T.nilable(Models::Shared::ListPageId), list_parent_id: T.nilable(Models::Shared::ListParentId), list_project_id: T.nilable(Models::Shared::ListProjectId), list_query: T.nilable(Models::Shared::ListQuery), list_raw_fields: T.nilable(Models::Shared::ListRawFields), list_repo_id: T.nilable(Models::Shared::ListRepoId), list_root_id: T.nilable(Models::Shared::ListRootId), list_sort_by_created_at: T.nilable(Models::Shared::ListSortByCreatedAt), list_sort_by_name: T.nilable(Models::Shared::ListSortByName), list_sort_by_updated_at: T.nilable(Models::Shared::ListSortByUpdatedAt), list_space_id: T.nilable(Models::Shared::ListSpaceId), list_start_gte: T.nilable(Models::Shared::ListStartGte), list_student_id: T.nilable(Models::Shared::ListStudentId), list_task_id: T.nilable(Models::Shared::ListTaskId), list_ticket_id: T.nilable(Models::Shared::ListTicketId), list_type: T.nilable(Models::Shared::ListType), list_updated_gte: T.nilable(Models::Shared::ListUpdatedGte), list_user_id: T.nilable(Models::Shared::ListUserId), methods: T.nilable(T::Hash[Symbol, ::Object]), native_webhook_parent_id: T.nilable(Models::Shared::NativeWebhookParentId), native_webhook_project_id: T.nilable(Models::Shared::NativeWebhookProjectId), outbound_fields: T.nilable(T::Hash[Symbol, ::Object]), raw_objects: T.nilable(T::Array[::String]), search_domain: T.nilable(Models::Shared::SearchDomain), search_email: T.nilable(Models::Shared::SearchEmail), search_linkedinurl: T.nilable(Models::Shared::SearchLinkedinurl), search_name: T.nilable(Models::Shared::SearchName), search_twitter: T.nilable(Models::Shared::SearchTwitter), slow_fields: T.nilable(T::Array[::String]), virtual_webhook_channel_id: T.nilable(Models::Shared::VirtualWebhookChannelId), virtual_webhook_company_id: T.nilable(Models::Shared::VirtualWebhookCompanyId), virtual_webhook_contact_id: T.nilable(Models::Shared::VirtualWebhookContactId), virtual_webhook_deal_id: T.nilable(Models::Shared::VirtualWebhookDealId), virtual_webhook_job_id: T.nilable(Models::Shared::VirtualWebhookJobId), virtual_webhook_limit: T.nilable(Models::Shared::VirtualWebhookLimit), virtual_webhook_parent_id: T.nilable(Models::Shared::VirtualWebhookParentId), virtual_webhook_ticket_id: T.nilable(Models::Shared::VirtualWebhookTicketId), virtual_webhook_type: T.nilable(Models::Shared::VirtualWebhookType), virtual_webhook_updated_gte: T.nilable(Models::Shared::VirtualWebhookUpdatedGte), virtual_webhook_user_id: T.nilable(Models::Shared::VirtualWebhookUserId), webhook_events: T.nilable(Models::Shared::PropertyIntegrationSupportWebhookEvents)).void }
        def initialize(from_webhook: nil, inbound_fields: nil, list_account_id: nil, list_application_id: nil, list_calendar_id: nil, list_call_id: nil, list_candidate_id: nil, list_channel_id: nil, list_class_id: nil, list_collection_id: nil, list_company_id: nil, list_contact_id: nil, list_course_id: nil, list_customer_id: nil, list_deal_id: nil, list_end_le: nil, list_event_id: nil, list_instructor_id: nil, list_interview_id: nil, list_invoice_id: nil, list_item_id: nil, list_item_variant_id: nil, list_job_id: nil, list_lead_id: nil, list_limit: nil, list_link_id: nil, list_list_id: nil, list_location_id: nil, list_offset: nil, list_order: nil, list_org_id: nil, list_page_id: nil, list_parent_id: nil, list_project_id: nil, list_query: nil, list_raw_fields: nil, list_repo_id: nil, list_root_id: nil, list_sort_by_created_at: nil, list_sort_by_name: nil, list_sort_by_updated_at: nil, list_space_id: nil, list_start_gte: nil, list_student_id: nil, list_task_id: nil, list_ticket_id: nil, list_type: nil, list_updated_gte: nil, list_user_id: nil, methods: nil, native_webhook_parent_id: nil, native_webhook_project_id: nil, outbound_fields: nil, raw_objects: nil, search_domain: nil, search_email: nil, search_linkedinurl: nil, search_name: nil, search_twitter: nil, slow_fields: nil, virtual_webhook_channel_id: nil, virtual_webhook_company_id: nil, virtual_webhook_contact_id: nil, virtual_webhook_deal_id: nil, virtual_webhook_job_id: nil, virtual_webhook_limit: nil, virtual_webhook_parent_id: nil, virtual_webhook_ticket_id: nil, virtual_webhook_type: nil, virtual_webhook_updated_gte: nil, virtual_webhook_user_id: nil, webhook_events: nil)
          @from_webhook = from_webhook
          @inbound_fields = inbound_fields
          @list_account_id = list_account_id
          @list_application_id = list_application_id
          @list_calendar_id = list_calendar_id
          @list_call_id = list_call_id
          @list_candidate_id = list_candidate_id
          @list_channel_id = list_channel_id
          @list_class_id = list_class_id
          @list_collection_id = list_collection_id
          @list_company_id = list_company_id
          @list_contact_id = list_contact_id
          @list_course_id = list_course_id
          @list_customer_id = list_customer_id
          @list_deal_id = list_deal_id
          @list_end_le = list_end_le
          @list_event_id = list_event_id
          @list_instructor_id = list_instructor_id
          @list_interview_id = list_interview_id
          @list_invoice_id = list_invoice_id
          @list_item_id = list_item_id
          @list_item_variant_id = list_item_variant_id
          @list_job_id = list_job_id
          @list_lead_id = list_lead_id
          @list_limit = list_limit
          @list_link_id = list_link_id
          @list_list_id = list_list_id
          @list_location_id = list_location_id
          @list_offset = list_offset
          @list_order = list_order
          @list_org_id = list_org_id
          @list_page_id = list_page_id
          @list_parent_id = list_parent_id
          @list_project_id = list_project_id
          @list_query = list_query
          @list_raw_fields = list_raw_fields
          @list_repo_id = list_repo_id
          @list_root_id = list_root_id
          @list_sort_by_created_at = list_sort_by_created_at
          @list_sort_by_name = list_sort_by_name
          @list_sort_by_updated_at = list_sort_by_updated_at
          @list_space_id = list_space_id
          @list_start_gte = list_start_gte
          @list_student_id = list_student_id
          @list_task_id = list_task_id
          @list_ticket_id = list_ticket_id
          @list_type = list_type
          @list_updated_gte = list_updated_gte
          @list_user_id = list_user_id
          @methods = methods
          @native_webhook_parent_id = native_webhook_parent_id
          @native_webhook_project_id = native_webhook_project_id
          @outbound_fields = outbound_fields
          @raw_objects = raw_objects
          @search_domain = search_domain
          @search_email = search_email
          @search_linkedinurl = search_linkedinurl
          @search_name = search_name
          @search_twitter = search_twitter
          @slow_fields = slow_fields
          @virtual_webhook_channel_id = virtual_webhook_channel_id
          @virtual_webhook_company_id = virtual_webhook_company_id
          @virtual_webhook_contact_id = virtual_webhook_contact_id
          @virtual_webhook_deal_id = virtual_webhook_deal_id
          @virtual_webhook_job_id = virtual_webhook_job_id
          @virtual_webhook_limit = virtual_webhook_limit
          @virtual_webhook_parent_id = virtual_webhook_parent_id
          @virtual_webhook_ticket_id = virtual_webhook_ticket_id
          @virtual_webhook_type = virtual_webhook_type
          @virtual_webhook_updated_gte = virtual_webhook_updated_gte
          @virtual_webhook_user_id = virtual_webhook_user_id
          @webhook_events = webhook_events
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @from_webhook == other.from_webhook
          return false unless @inbound_fields == other.inbound_fields
          return false unless @list_account_id == other.list_account_id
          return false unless @list_application_id == other.list_application_id
          return false unless @list_calendar_id == other.list_calendar_id
          return false unless @list_call_id == other.list_call_id
          return false unless @list_candidate_id == other.list_candidate_id
          return false unless @list_channel_id == other.list_channel_id
          return false unless @list_class_id == other.list_class_id
          return false unless @list_collection_id == other.list_collection_id
          return false unless @list_company_id == other.list_company_id
          return false unless @list_contact_id == other.list_contact_id
          return false unless @list_course_id == other.list_course_id
          return false unless @list_customer_id == other.list_customer_id
          return false unless @list_deal_id == other.list_deal_id
          return false unless @list_end_le == other.list_end_le
          return false unless @list_event_id == other.list_event_id
          return false unless @list_instructor_id == other.list_instructor_id
          return false unless @list_interview_id == other.list_interview_id
          return false unless @list_invoice_id == other.list_invoice_id
          return false unless @list_item_id == other.list_item_id
          return false unless @list_item_variant_id == other.list_item_variant_id
          return false unless @list_job_id == other.list_job_id
          return false unless @list_lead_id == other.list_lead_id
          return false unless @list_limit == other.list_limit
          return false unless @list_link_id == other.list_link_id
          return false unless @list_list_id == other.list_list_id
          return false unless @list_location_id == other.list_location_id
          return false unless @list_offset == other.list_offset
          return false unless @list_order == other.list_order
          return false unless @list_org_id == other.list_org_id
          return false unless @list_page_id == other.list_page_id
          return false unless @list_parent_id == other.list_parent_id
          return false unless @list_project_id == other.list_project_id
          return false unless @list_query == other.list_query
          return false unless @list_raw_fields == other.list_raw_fields
          return false unless @list_repo_id == other.list_repo_id
          return false unless @list_root_id == other.list_root_id
          return false unless @list_sort_by_created_at == other.list_sort_by_created_at
          return false unless @list_sort_by_name == other.list_sort_by_name
          return false unless @list_sort_by_updated_at == other.list_sort_by_updated_at
          return false unless @list_space_id == other.list_space_id
          return false unless @list_start_gte == other.list_start_gte
          return false unless @list_student_id == other.list_student_id
          return false unless @list_task_id == other.list_task_id
          return false unless @list_ticket_id == other.list_ticket_id
          return false unless @list_type == other.list_type
          return false unless @list_updated_gte == other.list_updated_gte
          return false unless @list_user_id == other.list_user_id
          return false unless @methods == other.methods
          return false unless @native_webhook_parent_id == other.native_webhook_parent_id
          return false unless @native_webhook_project_id == other.native_webhook_project_id
          return false unless @outbound_fields == other.outbound_fields
          return false unless @raw_objects == other.raw_objects
          return false unless @search_domain == other.search_domain
          return false unless @search_email == other.search_email
          return false unless @search_linkedinurl == other.search_linkedinurl
          return false unless @search_name == other.search_name
          return false unless @search_twitter == other.search_twitter
          return false unless @slow_fields == other.slow_fields
          return false unless @virtual_webhook_channel_id == other.virtual_webhook_channel_id
          return false unless @virtual_webhook_company_id == other.virtual_webhook_company_id
          return false unless @virtual_webhook_contact_id == other.virtual_webhook_contact_id
          return false unless @virtual_webhook_deal_id == other.virtual_webhook_deal_id
          return false unless @virtual_webhook_job_id == other.virtual_webhook_job_id
          return false unless @virtual_webhook_limit == other.virtual_webhook_limit
          return false unless @virtual_webhook_parent_id == other.virtual_webhook_parent_id
          return false unless @virtual_webhook_ticket_id == other.virtual_webhook_ticket_id
          return false unless @virtual_webhook_type == other.virtual_webhook_type
          return false unless @virtual_webhook_updated_gte == other.virtual_webhook_updated_gte
          return false unless @virtual_webhook_user_id == other.virtual_webhook_user_id
          return false unless @webhook_events == other.webhook_events
          true
        end
      end
    end
  end
end
