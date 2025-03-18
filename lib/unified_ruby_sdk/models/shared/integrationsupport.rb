# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class IntegrationSupport < ::Crystalline::FieldAugmented
      extend T::Sig


      field :from_webhook, T.nilable(::UnifiedRubySDK::Shared::FromWebhook), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('from_webhook'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::FromWebhook, true) } }

      field :inbound_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('inbound_fields') } }

      field :list_account_id, T.nilable(::UnifiedRubySDK::Shared::ListAccountId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_account_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListAccountId, true) } }

      field :list_application_id, T.nilable(::UnifiedRubySDK::Shared::ListApplicationId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_application_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListApplicationId, true) } }

      field :list_calendar_id, T.nilable(::UnifiedRubySDK::Shared::ListCalendarId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_calendar_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListCalendarId, true) } }

      field :list_candidate_id, T.nilable(::UnifiedRubySDK::Shared::ListCandidateId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_candidate_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListCandidateId, true) } }

      field :list_channel_id, T.nilable(::UnifiedRubySDK::Shared::ListChannelId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_channel_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListChannelId, true) } }

      field :list_class_id, T.nilable(::UnifiedRubySDK::Shared::ListClassId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_class_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListClassId, true) } }

      field :list_collection_id, T.nilable(::UnifiedRubySDK::Shared::ListCollectionId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_collection_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListCollectionId, true) } }

      field :list_company_id, T.nilable(::UnifiedRubySDK::Shared::ListCompanyId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_company_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListCompanyId, true) } }

      field :list_contact_id, T.nilable(::UnifiedRubySDK::Shared::ListContactId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_contact_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListContactId, true) } }

      field :list_course_id, T.nilable(::UnifiedRubySDK::Shared::ListCourseId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_course_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListCourseId, true) } }

      field :list_customer_id, T.nilable(::UnifiedRubySDK::Shared::ListCustomerId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_customer_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListCustomerId, true) } }

      field :list_deal_id, T.nilable(::UnifiedRubySDK::Shared::ListDealId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_deal_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListDealId, true) } }

      field :list_end_le, T.nilable(::UnifiedRubySDK::Shared::ListEndLe), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_end_le'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListEndLe, true) } }

      field :list_event_id, T.nilable(::UnifiedRubySDK::Shared::ListEventId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_event_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListEventId, true) } }

      field :list_instructor_id, T.nilable(::UnifiedRubySDK::Shared::ListInstructorId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_instructor_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListInstructorId, true) } }

      field :list_interview_id, T.nilable(::UnifiedRubySDK::Shared::ListInterviewId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_interview_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListInterviewId, true) } }

      field :list_invoice_id, T.nilable(::UnifiedRubySDK::Shared::ListInvoiceId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_invoice_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListInvoiceId, true) } }

      field :list_item_id, T.nilable(::UnifiedRubySDK::Shared::ListItemId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_item_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListItemId, true) } }

      field :list_item_variant_id, T.nilable(::UnifiedRubySDK::Shared::ListItemVariantId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_item_variant_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListItemVariantId, true) } }

      field :list_job_id, T.nilable(::UnifiedRubySDK::Shared::ListJobId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_job_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListJobId, true) } }

      field :list_lead_id, T.nilable(::UnifiedRubySDK::Shared::ListLeadId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_lead_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListLeadId, true) } }

      field :list_limit, T.nilable(::UnifiedRubySDK::Shared::ListLimit), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_limit'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListLimit, true) } }

      field :list_link_id, T.nilable(::UnifiedRubySDK::Shared::ListLinkId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_link_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListLinkId, true) } }

      field :list_list_id, T.nilable(::UnifiedRubySDK::Shared::ListListId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_list_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListListId, true) } }

      field :list_location_id, T.nilable(::UnifiedRubySDK::Shared::ListLocationId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_location_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListLocationId, true) } }

      field :list_offset, T.nilable(::UnifiedRubySDK::Shared::ListOffset), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_offset'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListOffset, true) } }

      field :list_order, T.nilable(::UnifiedRubySDK::Shared::ListOrder), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_order'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListOrder, true) } }

      field :list_org_id, T.nilable(::UnifiedRubySDK::Shared::ListOrgId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_org_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListOrgId, true) } }

      field :list_page_id, T.nilable(::UnifiedRubySDK::Shared::ListPageId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_page_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListPageId, true) } }

      field :list_parent_id, T.nilable(::UnifiedRubySDK::Shared::ListParentId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_parent_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListParentId, true) } }

      field :list_project_id, T.nilable(::UnifiedRubySDK::Shared::ListProjectId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_project_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListProjectId, true) } }

      field :list_query, T.nilable(::UnifiedRubySDK::Shared::ListQuery), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_query'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListQuery, true) } }

      field :list_raw_fields, T.nilable(::UnifiedRubySDK::Shared::ListRawFields), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_raw_fields'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListRawFields, true) } }

      field :list_repo_id, T.nilable(::UnifiedRubySDK::Shared::ListRepoId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_repo_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListRepoId, true) } }

      field :list_root_id, T.nilable(::UnifiedRubySDK::Shared::ListRootId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_root_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListRootId, true) } }

      field :list_sort_by_created_at, T.nilable(::UnifiedRubySDK::Shared::ListSortByCreatedAt), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_sort_by_created_at'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListSortByCreatedAt, true) } }

      field :list_sort_by_name, T.nilable(::UnifiedRubySDK::Shared::ListSortByName), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_sort_by_name'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListSortByName, true) } }

      field :list_sort_by_updated_at, T.nilable(::UnifiedRubySDK::Shared::ListSortByUpdatedAt), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_sort_by_updated_at'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListSortByUpdatedAt, true) } }

      field :list_space_id, T.nilable(::UnifiedRubySDK::Shared::ListSpaceId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_space_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListSpaceId, true) } }

      field :list_start_gte, T.nilable(::UnifiedRubySDK::Shared::ListStartGte), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_start_gte'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListStartGte, true) } }

      field :list_student_id, T.nilable(::UnifiedRubySDK::Shared::ListStudentId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_student_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListStudentId, true) } }

      field :list_task_id, T.nilable(::UnifiedRubySDK::Shared::ListTaskId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_task_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListTaskId, true) } }

      field :list_ticket_id, T.nilable(::UnifiedRubySDK::Shared::ListTicketId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_ticket_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListTicketId, true) } }

      field :list_type, T.nilable(::UnifiedRubySDK::Shared::ListType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListType, true) } }

      field :list_updated_gte, T.nilable(::UnifiedRubySDK::Shared::ListUpdatedGte), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_updated_gte'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListUpdatedGte, true) } }

      field :list_user_id, T.nilable(::UnifiedRubySDK::Shared::ListUserId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('list_user_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ListUserId, true) } }

      field :methods, T.nilable(T::Hash[Symbol, T::Boolean]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('methods') } }

      field :native_webhook_parent_id, T.nilable(::UnifiedRubySDK::Shared::NativeWebhookParentId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('native_webhook_parent_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::NativeWebhookParentId, true) } }

      field :native_webhook_project_id, T.nilable(::UnifiedRubySDK::Shared::NativeWebhookProjectId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('native_webhook_project_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::NativeWebhookProjectId, true) } }

      field :outbound_fields, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('outbound_fields') } }
      # objects that we map from in the integration
      field :raw_objects, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw_objects') } }

      field :search_domain, T.nilable(::UnifiedRubySDK::Shared::SearchDomain), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_domain'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SearchDomain, true) } }

      field :search_email, T.nilable(::UnifiedRubySDK::Shared::SearchEmail), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_email'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SearchEmail, true) } }

      field :search_linkedinurl, T.nilable(::UnifiedRubySDK::Shared::SearchLinkedinurl), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_linkedinurl'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SearchLinkedinurl, true) } }

      field :search_name, T.nilable(::UnifiedRubySDK::Shared::SearchName), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_name'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SearchName, true) } }

      field :search_twitter, T.nilable(::UnifiedRubySDK::Shared::SearchTwitter), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('search_twitter'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SearchTwitter, true) } }

      field :slow_fields, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('slow_fields') } }

      field :virtual_webhook_channel_id, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookChannelId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_channel_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookChannelId, true) } }

      field :virtual_webhook_company_id, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookCompanyId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_company_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookCompanyId, true) } }

      field :virtual_webhook_contact_id, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookContactId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_contact_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookContactId, true) } }

      field :virtual_webhook_deal_id, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookDealId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_deal_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookDealId, true) } }

      field :virtual_webhook_job_id, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookJobId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_job_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookJobId, true) } }

      field :virtual_webhook_limit, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookLimit), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_limit'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookLimit, true) } }

      field :virtual_webhook_parent_id, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookParentId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_parent_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookParentId, true) } }

      field :virtual_webhook_ticket_id, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookTicketId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_ticket_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookTicketId, true) } }

      field :virtual_webhook_type, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookType, true) } }

      field :virtual_webhook_updated_gte, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookUpdatedGte), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_updated_gte'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookUpdatedGte, true) } }

      field :virtual_webhook_user_id, T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookUserId), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('virtual_webhook_user_id'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::VirtualWebhookUserId, true) } }

      field :webhook_events, T.nilable(::UnifiedRubySDK::Shared::PropertyIntegrationSupportWebhookEvents), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('webhook_events') } }


      sig { params(from_webhook: T.nilable(::UnifiedRubySDK::Shared::FromWebhook), inbound_fields: T.nilable(T::Hash[Symbol, ::Object]), list_account_id: T.nilable(::UnifiedRubySDK::Shared::ListAccountId), list_application_id: T.nilable(::UnifiedRubySDK::Shared::ListApplicationId), list_calendar_id: T.nilable(::UnifiedRubySDK::Shared::ListCalendarId), list_candidate_id: T.nilable(::UnifiedRubySDK::Shared::ListCandidateId), list_channel_id: T.nilable(::UnifiedRubySDK::Shared::ListChannelId), list_class_id: T.nilable(::UnifiedRubySDK::Shared::ListClassId), list_collection_id: T.nilable(::UnifiedRubySDK::Shared::ListCollectionId), list_company_id: T.nilable(::UnifiedRubySDK::Shared::ListCompanyId), list_contact_id: T.nilable(::UnifiedRubySDK::Shared::ListContactId), list_course_id: T.nilable(::UnifiedRubySDK::Shared::ListCourseId), list_customer_id: T.nilable(::UnifiedRubySDK::Shared::ListCustomerId), list_deal_id: T.nilable(::UnifiedRubySDK::Shared::ListDealId), list_end_le: T.nilable(::UnifiedRubySDK::Shared::ListEndLe), list_event_id: T.nilable(::UnifiedRubySDK::Shared::ListEventId), list_instructor_id: T.nilable(::UnifiedRubySDK::Shared::ListInstructorId), list_interview_id: T.nilable(::UnifiedRubySDK::Shared::ListInterviewId), list_invoice_id: T.nilable(::UnifiedRubySDK::Shared::ListInvoiceId), list_item_id: T.nilable(::UnifiedRubySDK::Shared::ListItemId), list_item_variant_id: T.nilable(::UnifiedRubySDK::Shared::ListItemVariantId), list_job_id: T.nilable(::UnifiedRubySDK::Shared::ListJobId), list_lead_id: T.nilable(::UnifiedRubySDK::Shared::ListLeadId), list_limit: T.nilable(::UnifiedRubySDK::Shared::ListLimit), list_link_id: T.nilable(::UnifiedRubySDK::Shared::ListLinkId), list_list_id: T.nilable(::UnifiedRubySDK::Shared::ListListId), list_location_id: T.nilable(::UnifiedRubySDK::Shared::ListLocationId), list_offset: T.nilable(::UnifiedRubySDK::Shared::ListOffset), list_order: T.nilable(::UnifiedRubySDK::Shared::ListOrder), list_org_id: T.nilable(::UnifiedRubySDK::Shared::ListOrgId), list_page_id: T.nilable(::UnifiedRubySDK::Shared::ListPageId), list_parent_id: T.nilable(::UnifiedRubySDK::Shared::ListParentId), list_project_id: T.nilable(::UnifiedRubySDK::Shared::ListProjectId), list_query: T.nilable(::UnifiedRubySDK::Shared::ListQuery), list_raw_fields: T.nilable(::UnifiedRubySDK::Shared::ListRawFields), list_repo_id: T.nilable(::UnifiedRubySDK::Shared::ListRepoId), list_root_id: T.nilable(::UnifiedRubySDK::Shared::ListRootId), list_sort_by_created_at: T.nilable(::UnifiedRubySDK::Shared::ListSortByCreatedAt), list_sort_by_name: T.nilable(::UnifiedRubySDK::Shared::ListSortByName), list_sort_by_updated_at: T.nilable(::UnifiedRubySDK::Shared::ListSortByUpdatedAt), list_space_id: T.nilable(::UnifiedRubySDK::Shared::ListSpaceId), list_start_gte: T.nilable(::UnifiedRubySDK::Shared::ListStartGte), list_student_id: T.nilable(::UnifiedRubySDK::Shared::ListStudentId), list_task_id: T.nilable(::UnifiedRubySDK::Shared::ListTaskId), list_ticket_id: T.nilable(::UnifiedRubySDK::Shared::ListTicketId), list_type: T.nilable(::UnifiedRubySDK::Shared::ListType), list_updated_gte: T.nilable(::UnifiedRubySDK::Shared::ListUpdatedGte), list_user_id: T.nilable(::UnifiedRubySDK::Shared::ListUserId), methods: T.nilable(T::Hash[Symbol, T::Boolean]), native_webhook_parent_id: T.nilable(::UnifiedRubySDK::Shared::NativeWebhookParentId), native_webhook_project_id: T.nilable(::UnifiedRubySDK::Shared::NativeWebhookProjectId), outbound_fields: T.nilable(T::Hash[Symbol, ::Object]), raw_objects: T.nilable(T::Array[::String]), search_domain: T.nilable(::UnifiedRubySDK::Shared::SearchDomain), search_email: T.nilable(::UnifiedRubySDK::Shared::SearchEmail), search_linkedinurl: T.nilable(::UnifiedRubySDK::Shared::SearchLinkedinurl), search_name: T.nilable(::UnifiedRubySDK::Shared::SearchName), search_twitter: T.nilable(::UnifiedRubySDK::Shared::SearchTwitter), slow_fields: T.nilable(T::Array[::String]), virtual_webhook_channel_id: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookChannelId), virtual_webhook_company_id: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookCompanyId), virtual_webhook_contact_id: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookContactId), virtual_webhook_deal_id: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookDealId), virtual_webhook_job_id: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookJobId), virtual_webhook_limit: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookLimit), virtual_webhook_parent_id: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookParentId), virtual_webhook_ticket_id: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookTicketId), virtual_webhook_type: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookType), virtual_webhook_updated_gte: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookUpdatedGte), virtual_webhook_user_id: T.nilable(::UnifiedRubySDK::Shared::VirtualWebhookUserId), webhook_events: T.nilable(::UnifiedRubySDK::Shared::PropertyIntegrationSupportWebhookEvents)).void }
      def initialize(from_webhook: nil, inbound_fields: nil, list_account_id: nil, list_application_id: nil, list_calendar_id: nil, list_candidate_id: nil, list_channel_id: nil, list_class_id: nil, list_collection_id: nil, list_company_id: nil, list_contact_id: nil, list_course_id: nil, list_customer_id: nil, list_deal_id: nil, list_end_le: nil, list_event_id: nil, list_instructor_id: nil, list_interview_id: nil, list_invoice_id: nil, list_item_id: nil, list_item_variant_id: nil, list_job_id: nil, list_lead_id: nil, list_limit: nil, list_link_id: nil, list_list_id: nil, list_location_id: nil, list_offset: nil, list_order: nil, list_org_id: nil, list_page_id: nil, list_parent_id: nil, list_project_id: nil, list_query: nil, list_raw_fields: nil, list_repo_id: nil, list_root_id: nil, list_sort_by_created_at: nil, list_sort_by_name: nil, list_sort_by_updated_at: nil, list_space_id: nil, list_start_gte: nil, list_student_id: nil, list_task_id: nil, list_ticket_id: nil, list_type: nil, list_updated_gte: nil, list_user_id: nil, methods: nil, native_webhook_parent_id: nil, native_webhook_project_id: nil, outbound_fields: nil, raw_objects: nil, search_domain: nil, search_email: nil, search_linkedinurl: nil, search_name: nil, search_twitter: nil, slow_fields: nil, virtual_webhook_channel_id: nil, virtual_webhook_company_id: nil, virtual_webhook_contact_id: nil, virtual_webhook_deal_id: nil, virtual_webhook_job_id: nil, virtual_webhook_limit: nil, virtual_webhook_parent_id: nil, virtual_webhook_ticket_id: nil, virtual_webhook_type: nil, virtual_webhook_updated_gte: nil, virtual_webhook_user_id: nil, webhook_events: nil)
        @from_webhook = from_webhook
        @inbound_fields = inbound_fields
        @list_account_id = list_account_id
        @list_application_id = list_application_id
        @list_calendar_id = list_calendar_id
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
    end
  end
end
