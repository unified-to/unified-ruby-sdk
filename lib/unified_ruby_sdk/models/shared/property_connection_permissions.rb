# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
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
        ACCOUNTING_CONTACT_READ = new('accounting_contact_read')
        ACCOUNTING_CONTACT_WRITE = new('accounting_contact_write')
        ACCOUNTING_TAXRATE_READ = new('accounting_taxrate_read')
        ACCOUNTING_TAXRATE_WRITE = new('accounting_taxrate_write')
        ACCOUNTING_ORGANIZATION_READ = new('accounting_organization_read')
        PAYMENT_PAYMENT_READ = new('payment_payment_read')
        PAYMENT_PAYMENT_WRITE = new('payment_payment_write')
        PAYMENT_PAYOUT_READ = new('payment_payout_read')
        PAYMENT_REFUND_READ = new('payment_refund_read')
        PAYMENT_LINK_READ = new('payment_link_read')
        PAYMENT_LINK_WRITE = new('payment_link_write')
        COMMERCE_ITEM_READ = new('commerce_item_read')
        COMMERCE_ITEM_WRITE = new('commerce_item_write')
        COMMERCE_COLLECTION_READ = new('commerce_collection_read')
        COMMERCE_COLLECTION_WRITE = new('commerce_collection_write')
        COMMERCE_INVENTORY_READ = new('commerce_inventory_read')
        COMMERCE_INVENTORY_WRITE = new('commerce_inventory_write')
        COMMERCE_LOCATION_READ = new('commerce_location_read')
        COMMERCE_LOCATION_WRITE = new('commerce_location_write')
        ATS_ACTIVITY_READ = new('ats_activity_read')
        ATS_ACTIVITY_WRITE = new('ats_activity_write')
        ATS_APPLICATION_READ = new('ats_application_read')
        ATS_APPLICATION_WRITE = new('ats_application_write')
        ATS_APPLICATIONSTATUS_READ = new('ats_applicationstatus_read')
        ATS_CANDIDATE_READ = new('ats_candidate_read')
        ATS_CANDIDATE_WRITE = new('ats_candidate_write')
        ATS_INTERVIEW_READ = new('ats_interview_read')
        ATS_INTERVIEW_WRITE = new('ats_interview_write')
        ATS_JOB_READ = new('ats_job_read')
        ATS_JOB_WRITE = new('ats_job_write')
        ATS_COMPANY_READ = new('ats_company_read')
        ATS_DOCUMENT_READ = new('ats_document_read')
        ATS_DOCUMENT_WRITE = new('ats_document_write')
        ATS_SCORECARD_READ = new('ats_scorecard_read')
        ATS_SCORECARD_WRITE = new('ats_scorecard_write')
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
        HRIS_PAYSLIP_READ = new('hris_payslip_read')
        HRIS_PAYSLIP_WRITE = new('hris_payslip_write')
        HRIS_TIMEOFF_READ = new('hris_timeoff_read')
        HRIS_TIMEOFF_WRITE = new('hris_timeoff_write')
        UC_CALL_READ = new('uc_call_read')
        STORAGE_FILE_READ = new('storage_file_read')
        STORAGE_FILE_WRITE = new('storage_file_write')
        WEBHOOK = new('webhook')
        GENAI_MODEL_READ = new('genai_model_read')
        GENAI_PROMPT_READ = new('genai_prompt_read')
        GENAI_PROMPT_WRITE = new('genai_prompt_write')
        MESSAGING_MESSAGE_READ = new('messaging_message_read')
        MESSAGING_MESSAGE_WRITE = new('messaging_message_write')
        MESSAGING_CHANNEL_READ = new('messaging_channel_read')
        KMS_SPACE_READ = new('kms_space_read')
        KMS_SPACE_WRITE = new('kms_space_write')
        KMS_PAGE_READ = new('kms_page_read')
        KMS_PAGE_WRITE = new('kms_page_write')
        KMS_COMMENT_READ = new('kms_comment_read')
        KMS_COMMENT_WRITE = new('kms_comment_write')
      end
    end

  end
end
