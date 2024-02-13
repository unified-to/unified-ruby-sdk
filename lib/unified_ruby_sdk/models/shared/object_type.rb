# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class ObjectType < T::Enum
      enums do
        ACCOUNTING_ACCOUNT = new('accounting_account')
        ACCOUNTING_TRANSACTION = new('accounting_transaction')
        ACCOUNTING_CONTACT = new('accounting_contact')
        ACCOUNTING_INVOICE = new('accounting_invoice')
        ACCOUNTING_PAYMENT = new('accounting_payment')
        ACCOUNTING_TAXRATE = new('accounting_taxrate')
        ACCOUNTING_ORGANIZATION = new('accounting_organization')
        ACCOUNTING_PAYOUT = new('accounting_payout')
        ACCOUNTING_REFUND = new('accounting_refund')
        COMMERCE_ITEM = new('commerce_item')
        COMMERCE_COLLECTION = new('commerce_collection')
        COMMERCE_INVENTORY = new('commerce_inventory')
        COMMERCE_LOCATION = new('commerce_location')
        ATS_APPLICATION = new('ats_application')
        ATS_APPLICATIONSTATUS = new('ats_applicationstatus')
        ATS_CANDIDATE = new('ats_candidate')
        ATS_DOCUMENT = new('ats_document')
        ATS_INTERVIEW = new('ats_interview')
        ATS_JOB = new('ats_job')
        ATS_SCORECARD = new('ats_scorecard')
        ATS_COMPANY = new('ats_company')
        CRM_COMPANY = new('crm_company')
        CRM_CONTACT = new('crm_contact')
        CRM_DEAL = new('crm_deal')
        CRM_EVENT = new('crm_event')
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
        STORAGE_FILE = new('storage_file')
      end
    end

  end
end
