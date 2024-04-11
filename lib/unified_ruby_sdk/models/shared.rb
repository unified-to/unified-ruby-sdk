# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module UnifiedRubySDK
  module Shared
    autoload :Status, 'unified_ruby_sdk/models/shared/status.rb'
    autoload :Type, 'unified_ruby_sdk/models/shared/type.rb'
    autoload :AccountingAccount, 'unified_ruby_sdk/models/shared/accountingaccount.rb'
    autoload :TaxExemption, 'unified_ruby_sdk/models/shared/tax_exemption.rb'
    autoload :AccountingContact, 'unified_ruby_sdk/models/shared/accountingcontact.rb'
    autoload :AccountingTelephoneType, 'unified_ruby_sdk/models/shared/accountingtelephone_type.rb'
    autoload :AccountingTelephone, 'unified_ruby_sdk/models/shared/accountingtelephone.rb'
    autoload :PropertyAccountingContactShippingAddress, 'unified_ruby_sdk/models/shared/property_accountingcontact_shipping_address.rb'
    autoload :AccountingContactPaymentMethodType, 'unified_ruby_sdk/models/shared/accountingcontactpaymentmethod_type.rb'
    autoload :AccountingContactPaymentMethod, 'unified_ruby_sdk/models/shared/accountingcontactpaymentmethod.rb'
    autoload :AccountingEmailType, 'unified_ruby_sdk/models/shared/accountingemail_type.rb'
    autoload :AccountingEmail, 'unified_ruby_sdk/models/shared/accountingemail.rb'
    autoload :PropertyAccountingContactBillingAddress, 'unified_ruby_sdk/models/shared/property_accountingcontact_billing_address.rb'
    autoload :PaymentCollectionMethod, 'unified_ruby_sdk/models/shared/payment_collection_method.rb'
    autoload :AccountingInvoiceStatus, 'unified_ruby_sdk/models/shared/accountinginvoice_status.rb'
    autoload :AccountingInvoice, 'unified_ruby_sdk/models/shared/accountinginvoice.rb'
    autoload :AccountingLineitem, 'unified_ruby_sdk/models/shared/accountinglineitem.rb'
    autoload :AccountingTaxrate, 'unified_ruby_sdk/models/shared/accountingtaxrate.rb'
    autoload :AccountingTransaction, 'unified_ruby_sdk/models/shared/accountingtransaction.rb'
    autoload :AccountingTransactionLineitem, 'unified_ruby_sdk/models/shared/accountingtransactionlineitem.rb'
    autoload :AccountingOrganization, 'unified_ruby_sdk/models/shared/accountingorganization.rb'
    autoload :PropertyAccountingOrganizationAddress, 'unified_ruby_sdk/models/shared/property_accountingorganization_address.rb'
    autoload :CrmContact, 'unified_ruby_sdk/models/shared/crmcontact.rb'
    autoload :CrmTelephoneType, 'unified_ruby_sdk/models/shared/crmtelephone_type.rb'
    autoload :CrmTelephone, 'unified_ruby_sdk/models/shared/crmtelephone.rb'
    autoload :CrmEmailType, 'unified_ruby_sdk/models/shared/crmemail_type.rb'
    autoload :CrmEmail, 'unified_ruby_sdk/models/shared/crmemail.rb'
    autoload :PropertyCrmContactAddress, 'unified_ruby_sdk/models/shared/property_crmcontact_address.rb'
    autoload :UcContact, 'unified_ruby_sdk/models/shared/uccontact.rb'
    autoload :UcTelephoneType, 'unified_ruby_sdk/models/shared/uctelephone_type.rb'
    autoload :UcTelephone, 'unified_ruby_sdk/models/shared/uctelephone.rb'
    autoload :UcEmailType, 'unified_ruby_sdk/models/shared/ucemail_type.rb'
    autoload :UcEmail, 'unified_ruby_sdk/models/shared/ucemail.rb'
    autoload :AtsActivityType, 'unified_ruby_sdk/models/shared/atsactivity_type.rb'
    autoload :AtsActivity, 'unified_ruby_sdk/models/shared/atsactivity.rb'
    autoload :AtsApplicationStatus, 'unified_ruby_sdk/models/shared/atsapplication_status.rb'
    autoload :AtsApplication, 'unified_ruby_sdk/models/shared/atsapplication.rb'
    autoload :AtsApplicationAnswer, 'unified_ruby_sdk/models/shared/atsapplicationanswer.rb'
    autoload :Origin, 'unified_ruby_sdk/models/shared/origin.rb'
    autoload :AtsCandidate, 'unified_ruby_sdk/models/shared/atscandidate.rb'
    autoload :AtsTelephoneType, 'unified_ruby_sdk/models/shared/atstelephone_type.rb'
    autoload :AtsTelephone, 'unified_ruby_sdk/models/shared/atstelephone.rb'
    autoload :AtsEmailType, 'unified_ruby_sdk/models/shared/atsemail_type.rb'
    autoload :AtsEmail, 'unified_ruby_sdk/models/shared/atsemail.rb'
    autoload :PropertyAtsCandidateAddress, 'unified_ruby_sdk/models/shared/property_atscandidate_address.rb'
    autoload :AtsDocumentType, 'unified_ruby_sdk/models/shared/atsdocument_type.rb'
    autoload :AtsDocument, 'unified_ruby_sdk/models/shared/atsdocument.rb'
    autoload :AtsInterviewStatus, 'unified_ruby_sdk/models/shared/atsinterview_status.rb'
    autoload :AtsInterview, 'unified_ruby_sdk/models/shared/atsinterview.rb'
    autoload :EmploymentType, 'unified_ruby_sdk/models/shared/employment_type.rb'
    autoload :AtsJobStatus, 'unified_ruby_sdk/models/shared/atsjob_status.rb'
    autoload :AtsJob, 'unified_ruby_sdk/models/shared/atsjob.rb'
    autoload :AtsJobQuestionType, 'unified_ruby_sdk/models/shared/atsjobquestion_type.rb'
    autoload :AtsJobQuestion, 'unified_ruby_sdk/models/shared/atsjobquestion.rb'
    autoload :Frequency, 'unified_ruby_sdk/models/shared/frequency.rb'
    autoload :AtsCompensationType, 'unified_ruby_sdk/models/shared/atscompensation_type.rb'
    autoload :AtsCompensation, 'unified_ruby_sdk/models/shared/atscompensation.rb'
    autoload :AtsAddress, 'unified_ruby_sdk/models/shared/atsaddress.rb'
    autoload :Recommendation, 'unified_ruby_sdk/models/shared/recommendation.rb'
    autoload :AtsScorecard, 'unified_ruby_sdk/models/shared/atsscorecard.rb'
    autoload :AtsScorecardQuestion, 'unified_ruby_sdk/models/shared/atsscorecardquestion.rb'
    autoload :AtsCompany, 'unified_ruby_sdk/models/shared/atscompany.rb'
    autoload :PropertyAtsCompanyAddress, 'unified_ruby_sdk/models/shared/property_atscompany_address.rb'
    autoload :AtsStatusStatus, 'unified_ruby_sdk/models/shared/atsstatus_status.rb'
    autoload :AtsStatus, 'unified_ruby_sdk/models/shared/atsstatus.rb'
    autoload :CrmCompany, 'unified_ruby_sdk/models/shared/crmcompany.rb'
    autoload :PropertyCrmCompanyAddress, 'unified_ruby_sdk/models/shared/property_crmcompany_address.rb'
    autoload :EnrichCompany, 'unified_ruby_sdk/models/shared/enrichcompany.rb'
    autoload :EnrichTelephoneType, 'unified_ruby_sdk/models/shared/enrichtelephone_type.rb'
    autoload :EnrichTelephone, 'unified_ruby_sdk/models/shared/enrichtelephone.rb'
    autoload :PropertyEnrichCompanyAddress, 'unified_ruby_sdk/models/shared/property_enrichcompany_address.rb'
    autoload :CommerceCollectionType, 'unified_ruby_sdk/models/shared/commercecollection_type.rb'
    autoload :CommerceCollection, 'unified_ruby_sdk/models/shared/commercecollection.rb'
    autoload :CommerceItemMediaType, 'unified_ruby_sdk/models/shared/commerceitemmedia_type.rb'
    autoload :CommerceItemMedia, 'unified_ruby_sdk/models/shared/commerceitemmedia.rb'
    autoload :CommerceInventory, 'unified_ruby_sdk/models/shared/commerceinventory.rb'
    autoload :CommerceItem, 'unified_ruby_sdk/models/shared/commerceitem.rb'
    autoload :SizeUnit, 'unified_ruby_sdk/models/shared/size_unit.rb'
    autoload :WeightUnit, 'unified_ruby_sdk/models/shared/weight_unit.rb'
    autoload :CommerceItemVariant, 'unified_ruby_sdk/models/shared/commerceitemvariant.rb'
    autoload :CommerceItemPrice, 'unified_ruby_sdk/models/shared/commerceitemprice.rb'
    autoload :CommerceItemOption, 'unified_ruby_sdk/models/shared/commerceitemoption.rb'
    autoload :CommerceLocation, 'unified_ruby_sdk/models/shared/commercelocation.rb'
    autoload :PropertyCommerceLocationAddress, 'unified_ruby_sdk/models/shared/property_commercelocation_address.rb'
    autoload :CrmDeal, 'unified_ruby_sdk/models/shared/crmdeal.rb'
    autoload :CrmEventType, 'unified_ruby_sdk/models/shared/crmevent_type.rb'
    autoload :CrmEvent, 'unified_ruby_sdk/models/shared/crmevent.rb'
    autoload :PropertyCrmEventTaskStatus, 'unified_ruby_sdk/models/shared/property_crmevent_task_status.rb'
    autoload :PropertyCrmEventTask, 'unified_ruby_sdk/models/shared/property_crmevent_task.rb'
    autoload :PropertyCrmEventNote, 'unified_ruby_sdk/models/shared/property_crmevent_note.rb'
    autoload :PropertyCrmEventMeeting, 'unified_ruby_sdk/models/shared/property_crmevent_meeting.rb'
    autoload :PropertyCrmEventEmail, 'unified_ruby_sdk/models/shared/property_crmevent_email.rb'
    autoload :PropertyCrmEventCall, 'unified_ruby_sdk/models/shared/property_crmevent_call.rb'
    autoload :CrmLead, 'unified_ruby_sdk/models/shared/crmlead.rb'
    autoload :PropertyCrmLeadAddress, 'unified_ruby_sdk/models/shared/property_crmlead_address.rb'
    autoload :CrmPipeline, 'unified_ruby_sdk/models/shared/crmpipeline.rb'
    autoload :Gender, 'unified_ruby_sdk/models/shared/gender.rb'
    autoload :EnrichPerson, 'unified_ruby_sdk/models/shared/enrichperson.rb'
    autoload :EnrichPersonWorkHistory, 'unified_ruby_sdk/models/shared/enrichpersonworkhistory.rb'
    autoload :EnrichEmailType, 'unified_ruby_sdk/models/shared/enrichemail_type.rb'
    autoload :EnrichEmail, 'unified_ruby_sdk/models/shared/enrichemail.rb'
    autoload :PropertyEnrichPersonAddress, 'unified_ruby_sdk/models/shared/property_enrichperson_address.rb'
    autoload :EmploymentStatus, 'unified_ruby_sdk/models/shared/employment_status.rb'
    autoload :HrisEmployeeEmploymentType, 'unified_ruby_sdk/models/shared/hrisemployee_employment_type.rb'
    autoload :HrisEmployeeGender, 'unified_ruby_sdk/models/shared/hrisemployee_gender.rb'
    autoload :MaritalStatus, 'unified_ruby_sdk/models/shared/marital_status.rb'
    autoload :HrisEmployee, 'unified_ruby_sdk/models/shared/hrisemployee.rb'
    autoload :HrisTelephoneType, 'unified_ruby_sdk/models/shared/hristelephone_type.rb'
    autoload :HrisTelephone, 'unified_ruby_sdk/models/shared/hristelephone.rb'
    autoload :HrisEmailType, 'unified_ruby_sdk/models/shared/hrisemail_type.rb'
    autoload :HrisEmail, 'unified_ruby_sdk/models/shared/hrisemail.rb'
    autoload :PropertyHrisEmployeeAddress, 'unified_ruby_sdk/models/shared/property_hrisemployee_address.rb'
    autoload :HrisGroupType, 'unified_ruby_sdk/models/shared/hrisgroup_type.rb'
    autoload :HrisGroup, 'unified_ruby_sdk/models/shared/hrisgroup.rb'
    autoload :PaymentType, 'unified_ruby_sdk/models/shared/payment_type.rb'
    autoload :HrisPayslip, 'unified_ruby_sdk/models/shared/hrispayslip.rb'
    autoload :HrisPayslipDetailType, 'unified_ruby_sdk/models/shared/hrispayslipdetail_type.rb'
    autoload :HrisPayslipDetail, 'unified_ruby_sdk/models/shared/hrispayslipdetail.rb'
    autoload :HrisTimeoffStatus, 'unified_ruby_sdk/models/shared/hristimeoff_status.rb'
    autoload :HrisTimeoffType, 'unified_ruby_sdk/models/shared/hristimeoff_type.rb'
    autoload :HrisTimeoff, 'unified_ruby_sdk/models/shared/hristimeoff.rb'
    autoload :MarketingList, 'unified_ruby_sdk/models/shared/marketinglist.rb'
    autoload :MarketingMember, 'unified_ruby_sdk/models/shared/marketingmember.rb'
    autoload :MarketingEmailType, 'unified_ruby_sdk/models/shared/marketingemail_type.rb'
    autoload :MarketingEmail, 'unified_ruby_sdk/models/shared/marketingemail.rb'
    autoload :PaymentLink, 'unified_ruby_sdk/models/shared/paymentlink.rb'
    autoload :PaymentLinkLineitem, 'unified_ruby_sdk/models/shared/paymentlinklineitem.rb'
    autoload :PaymentPayment, 'unified_ruby_sdk/models/shared/paymentpayment.rb'
    autoload :PaymentPayoutStatus, 'unified_ruby_sdk/models/shared/paymentpayout_status.rb'
    autoload :PaymentPayout, 'unified_ruby_sdk/models/shared/paymentpayout.rb'
    autoload :PaymentRefundStatus, 'unified_ruby_sdk/models/shared/paymentrefund_status.rb'
    autoload :PaymentRefund, 'unified_ruby_sdk/models/shared/paymentrefund.rb'
    autoload :StorageFileType, 'unified_ruby_sdk/models/shared/storagefile_type.rb'
    autoload :StorageFile, 'unified_ruby_sdk/models/shared/storagefile.rb'
    autoload :StoragePermission, 'unified_ruby_sdk/models/shared/storagepermission.rb'
    autoload :PropertyStoragePermissionRoles, 'unified_ruby_sdk/models/shared/property_storagepermission_roles.rb'
    autoload :TicketingCustomer, 'unified_ruby_sdk/models/shared/ticketingcustomer.rb'
    autoload :TicketingTelephoneType, 'unified_ruby_sdk/models/shared/ticketingtelephone_type.rb'
    autoload :TicketingTelephone, 'unified_ruby_sdk/models/shared/ticketingtelephone.rb'
    autoload :TicketingEmailType, 'unified_ruby_sdk/models/shared/ticketingemail_type.rb'
    autoload :TicketingEmail, 'unified_ruby_sdk/models/shared/ticketingemail.rb'
    autoload :TicketingNote, 'unified_ruby_sdk/models/shared/ticketingnote.rb'
    autoload :TicketingTicketStatus, 'unified_ruby_sdk/models/shared/ticketingticket_status.rb'
    autoload :TicketingTicket, 'unified_ruby_sdk/models/shared/ticketingticket.rb'
    autoload :UcCall, 'unified_ruby_sdk/models/shared/uccall.rb'
    autoload :PropertyUcCallTelephoneType, 'unified_ruby_sdk/models/shared/property_uccall_telephone_type.rb'
    autoload :PropertyUcCallTelephone, 'unified_ruby_sdk/models/shared/property_uccall_telephone.rb'
    autoload :Connection, 'unified_ruby_sdk/models/shared/connection.rb'
    autoload :PropertyConnectionPermissions, 'unified_ruby_sdk/models/shared/property_connection_permissions.rb'
    autoload :PropertyConnectionCategories, 'unified_ruby_sdk/models/shared/property_connection_categories.rb'
    autoload :PropertyConnectionAuth, 'unified_ruby_sdk/models/shared/property_connection_auth.rb'
    autoload :Event, 'unified_ruby_sdk/models/shared/event.rb'
    autoload :ObjectType, 'unified_ruby_sdk/models/shared/object_type.rb'
    autoload :WebhookType, 'unified_ruby_sdk/models/shared/webhook_type.rb'
    autoload :Webhook, 'unified_ruby_sdk/models/shared/webhook.rb'
    autoload :ApiCallType, 'unified_ruby_sdk/models/shared/apicall_type.rb'
    autoload :ApiCall, 'unified_ruby_sdk/models/shared/apicall.rb'
    autoload :Integration, 'unified_ruby_sdk/models/shared/integration.rb'
    autoload :IntegrationSupport, 'unified_ruby_sdk/models/shared/integrationsupport.rb'
    autoload :PropertyIntegrationSupportWebhookEvents, 'unified_ruby_sdk/models/shared/property_integrationsupport_webhook_events.rb'
    autoload :PropertyPropertyIntegrationSupportWebhookEventsUpdated, 'unified_ruby_sdk/models/shared/property_property_integrationsupport_webhook_events_updated.rb'
    autoload :PropertyPropertyIntegrationSupportWebhookEventsDeleted, 'unified_ruby_sdk/models/shared/property_property_integrationsupport_webhook_events_deleted.rb'
    autoload :PropertyPropertyIntegrationSupportWebhookEventsCreated, 'unified_ruby_sdk/models/shared/property_property_integrationsupport_webhook_events_created.rb'
    autoload :PropertyIntegrationCategories, 'unified_ruby_sdk/models/shared/property_integration_categories.rb'
    autoload :IssueStatus, 'unified_ruby_sdk/models/shared/issue_status.rb'
    autoload :IssueType, 'unified_ruby_sdk/models/shared/issue_type.rb'
    autoload :Issue, 'unified_ruby_sdk/models/shared/issue.rb'
    autoload :Security, 'unified_ruby_sdk/models/shared/security.rb'
  end
end
