# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class PropertyConnectionPermissions < T::Enum
      enums do
        AUTH_LOGIN = new('auth_login')
        ACCOUNTING_ACCOUNT_READ = new('accounting_account_read')
        ACCOUNTING_ACCOUNT_WRITE = new('accounting_account_write')
        ACCOUNTING_TRANSACTION_READ = new('accounting_transaction_read')
        ACCOUNTING_TRANSACTION_WRITE = new('accounting_transaction_write')
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

  end
end
