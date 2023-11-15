# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class Scopes < T::Enum
      enums do
        AUTH_LOGIN = new('auth_login')
        ACCOUNTING_INVOICE_READ = new('accounting_invoice_read')
        ACCOUNTING_INVOICE_WRITE = new('accounting_invoice_write')
        ACCOUNTING_CUSTOMER_READ = new('accounting_customer_read')
        ACCOUNTING_CUSTOMER_WRITE = new('accounting_customer_write')
        ACCOUNTING_PAYMENT_READ = new('accounting_payment_read')
        ACCOUNTING_PAYMENT_WRITE = new('accounting_payment_write')
        ATS_SCORECARD_READ = new('ats_scorecard_read')
        ATS_SCORECARD_WRITE = new('ats_scorecard_write')
        ATS_APPLICATION_READ = new('ats_application_read')
        ATS_APPLICATION_WRITE = new('ats_application_write')
        ATS_CANDIDATE_READ = new('ats_candidate_read')
        ATS_CANDIDATE_WRITE = new('ats_candidate_write')
        ATS_INTERVIEW_READ = new('ats_interview_read')
        ATS_INTERVIEW_WRITE = new('ats_interview_write')
        ATS_JOB_READ = new('ats_job_read')
        ATS_JOB_WRITE = new('ats_job_write')
        ATS_DOCUMENT_READ = new('ats_document_read')
        ATS_DOCUMENT_WRITE = new('ats_document_write')
        CRM_COMPANY_READ = new('crm_company_read')
        CRM_COMPANY_WRITE = new('crm_company_write')
        CRM_CONTACT_READ = new('crm_contact_read')
        CRM_CONTACT_WRITE = new('crm_contact_write')
        CRM_DEAL_READ = new('crm_deal_read')
        CRM_DEAL_WRITE = new('crm_deal_write')
        CRM_EVENT_READ = new('crm_event_read')
        CRM_EVENT_WRITE = new('crm_event_write')
        CRM_LEAD_READ = new('crm_lead_read')
        CRM_LEAD_WRITE = new('crm_lead_write')
        CRM_FILE_READ = new('crm_file_read')
        CRM_FILE_WRITE = new('crm_file_write')
        CRM_PIPELINE_READ = new('crm_pipeline_read')
        CRM_PIPELINE_WRITE = new('crm_pipeline_write')
        MARTECH_LIST_READ = new('martech_list_read')
        MARTECH_LIST_WRITE = new('martech_list_write')
        MARTECH_MEMBER_READ = new('martech_member_read')
        MARTECH_MEMBER_WRITE = new('martech_member_write')
        TICKETING_CUSTOMER_READ = new('ticketing_customer_read')
        TICKETING_CUSTOMER_WRITE = new('ticketing_customer_write')
        TICKETING_TICKET_READ = new('ticketing_ticket_read')
        TICKETING_TICKET_WRITE = new('ticketing_ticket_write')
        TICKETING_NOTE_READ = new('ticketing_note_read')
        TICKETING_NOTE_WRITE = new('ticketing_note_write')
        HRIS_EMPLOYEE_READ = new('hris_employee_read')
        HRIS_EMPLOYEE_WRITE = new('hris_employee_write')
        HRIS_GROUP_READ = new('hris_group_read')
        HRIS_GROUP_WRITE = new('hris_group_write')
        UC_CALL_READ = new('uc_call_read')
        WEBHOOK = new('webhook')
      end
    end



    class GetUnifiedIntegrationAuthRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Type of the supported integration
      field :integration_type, String, { 'path_param': { 'field_name': 'integration_type', 'style': 'simple', 'explode': false } }
      # The ID of the workspace
      field :workspace_id, String, { 'path_param': { 'field_name': 'workspace_id', 'style': 'simple', 'explode': false } }

      field :env, T.nilable(String), { 'query_param': { 'field_name': 'env', 'style': 'form', 'explode': true } }
      # Your user identifier to associate with the new Integration
      field :external_xref, T.nilable(String), { 'query_param': { 'field_name': 'external_xref', 'style': 'form', 'explode': true } }
      # The URL where you want the user to be redirect to after an unsuccessful authentication. An "error" variable will be appended.
      field :failure_redirect, T.nilable(String), { 'query_param': { 'field_name': 'failure_redirect', 'style': 'form', 'explode': true } }
      # Language: en, fr, es, it, pt, zh, hi
      field :lang, T.nilable(String), { 'query_param': { 'field_name': 'lang', 'style': 'form', 'explode': true } }

      field :redirect, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'redirect', 'style': 'form', 'explode': true } }

      field :scopes, T.nilable(T::Array[Operations::Scopes]), { 'query_param': { 'field_name': 'scopes', 'style': 'form', 'explode': true } }
      # Extra state to send back to your success URL
      field :state, T.nilable(String), { 'query_param': { 'field_name': 'state', 'style': 'form', 'explode': true } }

      field :subdomain, T.nilable(String), { 'query_param': { 'field_name': 'subdomain', 'style': 'form', 'explode': true } }
      # The URL where you want the user to be redirect to after a successful authentication.  The connection ID will be appended with (id=<connectionId>) to this URL, as will the state that was provided.
      field :success_redirect, T.nilable(String), { 'query_param': { 'field_name': 'success_redirect', 'style': 'form', 'explode': true } }


      sig { params(integration_type: String, workspace_id: String, env: T.nilable(String), external_xref: T.nilable(String), failure_redirect: T.nilable(String), lang: T.nilable(String), redirect: T.nilable(T::Boolean), scopes: T.nilable(T::Array[Operations::Scopes]), state: T.nilable(String), subdomain: T.nilable(String), success_redirect: T.nilable(String)).void }
      def initialize(integration_type: nil, workspace_id: nil, env: nil, external_xref: nil, failure_redirect: nil, lang: nil, redirect: nil, scopes: nil, state: nil, subdomain: nil, success_redirect: nil)
        @integration_type = integration_type
        @workspace_id = workspace_id
        @env = env
        @external_xref = external_xref
        @failure_redirect = failure_redirect
        @lang = lang
        @redirect = redirect
        @scopes = scopes
        @state = state
        @subdomain = subdomain
        @success_redirect = success_redirect
      end
    end


    class GetUnifiedIntegrationAuthResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # Successful
      field :res, T.nilable(String)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(String)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
