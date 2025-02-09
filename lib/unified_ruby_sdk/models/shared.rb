# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module UnifiedRubySDK
  module Shared
    autoload :Raw, 'unified_ruby_sdk/models/shared/raw.rb'
    autoload :Status, 'unified_ruby_sdk/models/shared/status.rb'
    autoload :Type, 'unified_ruby_sdk/models/shared/type.rb'
    autoload :AccountingAccount, 'unified_ruby_sdk/models/shared/accountingaccount.rb'
    autoload :AccountingContactRaw, 'unified_ruby_sdk/models/shared/accountingcontact_raw.rb'
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
    autoload :AccountingInvoiceRaw, 'unified_ruby_sdk/models/shared/accountinginvoice_raw.rb'
    autoload :AccountingInvoiceStatus, 'unified_ruby_sdk/models/shared/accountinginvoice_status.rb'
    autoload :AccountingInvoiceType, 'unified_ruby_sdk/models/shared/accountinginvoice_type.rb'
    autoload :AccountingInvoice, 'unified_ruby_sdk/models/shared/accountinginvoice.rb'
    autoload :AccountingLineitem, 'unified_ruby_sdk/models/shared/accountinglineitem.rb'
    autoload :AccountingJournalRaw, 'unified_ruby_sdk/models/shared/accountingjournal_raw.rb'
    autoload :AccountingJournal, 'unified_ruby_sdk/models/shared/accountingjournal.rb'
    autoload :AccountingJournalLineitem, 'unified_ruby_sdk/models/shared/accountingjournallineitem.rb'
    autoload :AccountingOrderRaw, 'unified_ruby_sdk/models/shared/accountingorder_raw.rb'
    autoload :AccountingOrderStatus, 'unified_ruby_sdk/models/shared/accountingorder_status.rb'
    autoload :AccountingOrderType, 'unified_ruby_sdk/models/shared/accountingorder_type.rb'
    autoload :AccountingOrder, 'unified_ruby_sdk/models/shared/accountingorder.rb'
    autoload :PropertyAccountingOrderShippingAddress, 'unified_ruby_sdk/models/shared/property_accountingorder_shipping_address.rb'
    autoload :PropertyAccountingOrderBillingAddress, 'unified_ruby_sdk/models/shared/property_accountingorder_billing_address.rb'
    autoload :AccountingTaxrateRaw, 'unified_ruby_sdk/models/shared/accountingtaxrate_raw.rb'
    autoload :AccountingTaxrate, 'unified_ruby_sdk/models/shared/accountingtaxrate.rb'
    autoload :AccountingTransactionRaw, 'unified_ruby_sdk/models/shared/accountingtransaction_raw.rb'
    autoload :AccountingTransaction, 'unified_ruby_sdk/models/shared/accountingtransaction.rb'
    autoload :AccountingTransactionLineItem, 'unified_ruby_sdk/models/shared/accountingtransactionlineitem.rb'
    autoload :AccountingTransactionContact, 'unified_ruby_sdk/models/shared/accountingtransactioncontact.rb'
    autoload :AccountingOrganizationRaw, 'unified_ruby_sdk/models/shared/accountingorganization_raw.rb'
    autoload :AccountingOrganization, 'unified_ruby_sdk/models/shared/accountingorganization.rb'
    autoload :PropertyAccountingOrganizationAddress, 'unified_ruby_sdk/models/shared/property_accountingorganization_address.rb'
    autoload :CrmContactRaw, 'unified_ruby_sdk/models/shared/crmcontact_raw.rb'
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
    autoload :RepoOrganization, 'unified_ruby_sdk/models/shared/repoorganization.rb'
    autoload :AtsActivityRaw, 'unified_ruby_sdk/models/shared/atsactivity_raw.rb'
    autoload :AtsActivityType, 'unified_ruby_sdk/models/shared/atsactivity_type.rb'
    autoload :AtsActivity, 'unified_ruby_sdk/models/shared/atsactivity.rb'
    autoload :AtsEmailType, 'unified_ruby_sdk/models/shared/atsemail_type.rb'
    autoload :AtsEmail, 'unified_ruby_sdk/models/shared/atsemail.rb'
    autoload :PropertyAtsActivityFromType, 'unified_ruby_sdk/models/shared/property_atsactivity_from_type.rb'
    autoload :PropertyAtsActivityFrom, 'unified_ruby_sdk/models/shared/property_atsactivity_from.rb'
    autoload :AtsApplicationRaw, 'unified_ruby_sdk/models/shared/atsapplication_raw.rb'
    autoload :AtsApplicationStatus, 'unified_ruby_sdk/models/shared/atsapplication_status.rb'
    autoload :AtsApplication, 'unified_ruby_sdk/models/shared/atsapplication.rb'
    autoload :AtsOfferRaw, 'unified_ruby_sdk/models/shared/atsoffer_raw.rb'
    autoload :AtsOfferStatus, 'unified_ruby_sdk/models/shared/atsoffer_status.rb'
    autoload :AtsOffer, 'unified_ruby_sdk/models/shared/atsoffer.rb'
    autoload :Frequency, 'unified_ruby_sdk/models/shared/frequency.rb'
    autoload :AtsCompensationType, 'unified_ruby_sdk/models/shared/atscompensation_type.rb'
    autoload :AtsCompensation, 'unified_ruby_sdk/models/shared/atscompensation.rb'
    autoload :AtsApplicationAnswer, 'unified_ruby_sdk/models/shared/atsapplicationanswer.rb'
    autoload :Origin, 'unified_ruby_sdk/models/shared/origin.rb'
    autoload :AtsCandidateRaw, 'unified_ruby_sdk/models/shared/atscandidate_raw.rb'
    autoload :AtsCandidate, 'unified_ruby_sdk/models/shared/atscandidate.rb'
    autoload :AtsTelephoneType, 'unified_ruby_sdk/models/shared/atstelephone_type.rb'
    autoload :AtsTelephone, 'unified_ruby_sdk/models/shared/atstelephone.rb'
    autoload :PropertyAtsCandidateAddress, 'unified_ruby_sdk/models/shared/property_atscandidate_address.rb'
    autoload :AtsDocumentRaw, 'unified_ruby_sdk/models/shared/atsdocument_raw.rb'
    autoload :AtsDocumentType, 'unified_ruby_sdk/models/shared/atsdocument_type.rb'
    autoload :AtsDocument, 'unified_ruby_sdk/models/shared/atsdocument.rb'
    autoload :AtsInterviewRaw, 'unified_ruby_sdk/models/shared/atsinterview_raw.rb'
    autoload :AtsInterviewStatus, 'unified_ruby_sdk/models/shared/atsinterview_status.rb'
    autoload :AtsInterview, 'unified_ruby_sdk/models/shared/atsinterview.rb'
    autoload :EmploymentType, 'unified_ruby_sdk/models/shared/employment_type.rb'
    autoload :AtsJobRaw, 'unified_ruby_sdk/models/shared/atsjob_raw.rb'
    autoload :AtsJobStatus, 'unified_ruby_sdk/models/shared/atsjob_status.rb'
    autoload :AtsJob, 'unified_ruby_sdk/models/shared/atsjob.rb'
    autoload :AtsJobQuestionType, 'unified_ruby_sdk/models/shared/atsjobquestion_type.rb'
    autoload :AtsJobQuestion, 'unified_ruby_sdk/models/shared/atsjobquestion.rb'
    autoload :AtsJobPosting, 'unified_ruby_sdk/models/shared/atsjobposting.rb'
    autoload :PropertyAtsJobPostingAddress, 'unified_ruby_sdk/models/shared/property_atsjobposting_address.rb'
    autoload :AtsAddress, 'unified_ruby_sdk/models/shared/atsaddress.rb'
    autoload :AtsScorecardRaw, 'unified_ruby_sdk/models/shared/atsscorecard_raw.rb'
    autoload :Recommendation, 'unified_ruby_sdk/models/shared/recommendation.rb'
    autoload :AtsScorecard, 'unified_ruby_sdk/models/shared/atsscorecard.rb'
    autoload :AtsScorecardQuestion, 'unified_ruby_sdk/models/shared/atsscorecardquestion.rb'
    autoload :AtsCompanyRaw, 'unified_ruby_sdk/models/shared/atscompany_raw.rb'
    autoload :AtsCompany, 'unified_ruby_sdk/models/shared/atscompany.rb'
    autoload :PropertyAtsCompanyAddress, 'unified_ruby_sdk/models/shared/property_atscompany_address.rb'
    autoload :AtsStatusRaw, 'unified_ruby_sdk/models/shared/atsstatus_raw.rb'
    autoload :AtsStatusStatus, 'unified_ruby_sdk/models/shared/atsstatus_status.rb'
    autoload :AtsStatus, 'unified_ruby_sdk/models/shared/atsstatus.rb'
    autoload :CrmCompanyRaw, 'unified_ruby_sdk/models/shared/crmcompany_raw.rb'
    autoload :CrmCompany, 'unified_ruby_sdk/models/shared/crmcompany.rb'
    autoload :PropertyCrmCompanyAddress, 'unified_ruby_sdk/models/shared/property_crmcompany_address.rb'
    autoload :HrisCompanyRaw, 'unified_ruby_sdk/models/shared/hriscompany_raw.rb'
    autoload :HrisCompany, 'unified_ruby_sdk/models/shared/hriscompany.rb'
    autoload :PropertyHrisCompanyAddress, 'unified_ruby_sdk/models/shared/property_hriscompany_address.rb'
    autoload :EnrichCompany, 'unified_ruby_sdk/models/shared/enrichcompany.rb'
    autoload :EnrichTelephoneType, 'unified_ruby_sdk/models/shared/enrichtelephone_type.rb'
    autoload :EnrichTelephone, 'unified_ruby_sdk/models/shared/enrichtelephone.rb'
    autoload :PropertyEnrichCompanyAddress, 'unified_ruby_sdk/models/shared/property_enrichcompany_address.rb'
    autoload :CommerceCollectionRaw, 'unified_ruby_sdk/models/shared/commercecollection_raw.rb'
    autoload :CommerceCollectionType, 'unified_ruby_sdk/models/shared/commercecollection_type.rb'
    autoload :CommerceCollection, 'unified_ruby_sdk/models/shared/commercecollection.rb'
    autoload :ExtraData, 'unified_ruby_sdk/models/shared/extra_data.rb'
    autoload :Value, 'unified_ruby_sdk/models/shared/value.rb'
    autoload :CommerceItemMetadata, 'unified_ruby_sdk/models/shared/commerceitemmetadata.rb'
    autoload :CommerceItemMediaType, 'unified_ruby_sdk/models/shared/commerceitemmedia_type.rb'
    autoload :CommerceItemMedia, 'unified_ruby_sdk/models/shared/commerceitemmedia.rb'
    autoload :CommerceInventoryRaw, 'unified_ruby_sdk/models/shared/commerceinventory_raw.rb'
    autoload :CommerceInventory, 'unified_ruby_sdk/models/shared/commerceinventory.rb'
    autoload :CommerceItemRaw, 'unified_ruby_sdk/models/shared/commerceitem_raw.rb'
    autoload :CommerceItem, 'unified_ruby_sdk/models/shared/commerceitem.rb'
    autoload :SizeUnit, 'unified_ruby_sdk/models/shared/size_unit.rb'
    autoload :WeightUnit, 'unified_ruby_sdk/models/shared/weight_unit.rb'
    autoload :CommerceItemVariant, 'unified_ruby_sdk/models/shared/commerceitemvariant.rb'
    autoload :CommerceItemPrice, 'unified_ruby_sdk/models/shared/commerceitemprice.rb'
    autoload :CommerceItemOption, 'unified_ruby_sdk/models/shared/commerceitemoption.rb'
    autoload :CommerceLocationRaw, 'unified_ruby_sdk/models/shared/commercelocation_raw.rb'
    autoload :CommerceLocation, 'unified_ruby_sdk/models/shared/commercelocation.rb'
    autoload :PropertyCommerceLocationAddress, 'unified_ruby_sdk/models/shared/property_commercelocation_address.rb'
    autoload :HrisLocationRaw, 'unified_ruby_sdk/models/shared/hrislocation_raw.rb'
    autoload :HrisLocation, 'unified_ruby_sdk/models/shared/hrislocation.rb'
    autoload :HrisTelephoneType, 'unified_ruby_sdk/models/shared/hristelephone_type.rb'
    autoload :HrisTelephone, 'unified_ruby_sdk/models/shared/hristelephone.rb'
    autoload :PropertyHrisLocationAddress, 'unified_ruby_sdk/models/shared/property_hrislocation_address.rb'
    autoload :CrmDealRaw, 'unified_ruby_sdk/models/shared/crmdeal_raw.rb'
    autoload :CrmDeal, 'unified_ruby_sdk/models/shared/crmdeal.rb'
    autoload :CrmEventRaw, 'unified_ruby_sdk/models/shared/crmevent_raw.rb'
    autoload :CrmEventType, 'unified_ruby_sdk/models/shared/crmevent_type.rb'
    autoload :CrmEvent, 'unified_ruby_sdk/models/shared/crmevent.rb'
    autoload :Priority, 'unified_ruby_sdk/models/shared/priority.rb'
    autoload :PropertyCrmEventTaskStatus, 'unified_ruby_sdk/models/shared/property_crmevent_task_status.rb'
    autoload :PropertyCrmEventTask, 'unified_ruby_sdk/models/shared/property_crmevent_task.rb'
    autoload :PropertyCrmEventPageView, 'unified_ruby_sdk/models/shared/property_crmevent_page_view.rb'
    autoload :PropertyCrmEventNote, 'unified_ruby_sdk/models/shared/property_crmevent_note.rb'
    autoload :PropertyCrmEventMeeting, 'unified_ruby_sdk/models/shared/property_crmevent_meeting.rb'
    autoload :PropertyCrmEventMarketingEmail, 'unified_ruby_sdk/models/shared/property_crmevent_marketing_email.rb'
    autoload :PropertyCrmEventForm, 'unified_ruby_sdk/models/shared/property_crmevent_form.rb'
    autoload :CrmEventFormFieldType, 'unified_ruby_sdk/models/shared/crmeventformfield_type.rb'
    autoload :CrmEventFormField, 'unified_ruby_sdk/models/shared/crmeventformfield.rb'
    autoload :CrmEventFormOption, 'unified_ruby_sdk/models/shared/crmeventformoption.rb'
    autoload :PropertyCrmEventEmail, 'unified_ruby_sdk/models/shared/property_crmevent_email.rb'
    autoload :PropertyCrmEventCall, 'unified_ruby_sdk/models/shared/property_crmevent_call.rb'
    autoload :CrmLeadRaw, 'unified_ruby_sdk/models/shared/crmlead_raw.rb'
    autoload :CrmLead, 'unified_ruby_sdk/models/shared/crmlead.rb'
    autoload :PropertyCrmLeadAddress, 'unified_ruby_sdk/models/shared/property_crmlead_address.rb'
    autoload :CrmPipelineRaw, 'unified_ruby_sdk/models/shared/crmpipeline_raw.rb'
    autoload :CrmPipeline, 'unified_ruby_sdk/models/shared/crmpipeline.rb'
    autoload :CrmStage, 'unified_ruby_sdk/models/shared/crmstage.rb'
    autoload :Gender, 'unified_ruby_sdk/models/shared/gender.rb'
    autoload :EnrichPerson, 'unified_ruby_sdk/models/shared/enrichperson.rb'
    autoload :EnrichPersonWorkHistory, 'unified_ruby_sdk/models/shared/enrichpersonworkhistory.rb'
    autoload :EnrichEmailType, 'unified_ruby_sdk/models/shared/enrichemail_type.rb'
    autoload :EnrichEmail, 'unified_ruby_sdk/models/shared/enrichemail.rb'
    autoload :PropertyEnrichPersonAddress, 'unified_ruby_sdk/models/shared/property_enrichperson_address.rb'
    autoload :GenaiPrompt, 'unified_ruby_sdk/models/shared/genaiprompt.rb'
    autoload :Role, 'unified_ruby_sdk/models/shared/role.rb'
    autoload :GenaiContent, 'unified_ruby_sdk/models/shared/genaicontent.rb'
    autoload :GenaiModel, 'unified_ruby_sdk/models/shared/genaimodel.rb'
    autoload :EmploymentStatus, 'unified_ruby_sdk/models/shared/employment_status.rb'
    autoload :HrisEmployeeEmploymentType, 'unified_ruby_sdk/models/shared/hrisemployee_employment_type.rb'
    autoload :HrisEmployeeGender, 'unified_ruby_sdk/models/shared/hrisemployee_gender.rb'
    autoload :MaritalStatus, 'unified_ruby_sdk/models/shared/marital_status.rb'
    autoload :HrisEmployeeRaw, 'unified_ruby_sdk/models/shared/hrisemployee_raw.rb'
    autoload :HrisEmployee, 'unified_ruby_sdk/models/shared/hrisemployee.rb'
    autoload :HrisGroupRaw, 'unified_ruby_sdk/models/shared/hrisgroup_raw.rb'
    autoload :HrisGroupType, 'unified_ruby_sdk/models/shared/hrisgroup_type.rb'
    autoload :HrisGroup, 'unified_ruby_sdk/models/shared/hrisgroup.rb'
    autoload :PropertyHrisEmployeeEmployeeRoles, 'unified_ruby_sdk/models/shared/property_hrisemployee_employee_roles.rb'
    autoload :HrisEmailType, 'unified_ruby_sdk/models/shared/hrisemail_type.rb'
    autoload :HrisEmail, 'unified_ruby_sdk/models/shared/hrisemail.rb'
    autoload :HrisCompensationFrequency, 'unified_ruby_sdk/models/shared/hriscompensation_frequency.rb'
    autoload :HrisCompensationType, 'unified_ruby_sdk/models/shared/hriscompensation_type.rb'
    autoload :HrisCompensation, 'unified_ruby_sdk/models/shared/hriscompensation.rb'
    autoload :PropertyHrisEmployeeAddress, 'unified_ruby_sdk/models/shared/property_hrisemployee_address.rb'
    autoload :PaymentType, 'unified_ruby_sdk/models/shared/payment_type.rb'
    autoload :HrisPayslipRaw, 'unified_ruby_sdk/models/shared/hrispayslip_raw.rb'
    autoload :HrisPayslip, 'unified_ruby_sdk/models/shared/hrispayslip.rb'
    autoload :HrisPayslipDetailType, 'unified_ruby_sdk/models/shared/hrispayslipdetail_type.rb'
    autoload :HrisPayslipDetail, 'unified_ruby_sdk/models/shared/hrispayslipdetail.rb'
    autoload :HrisTimeoffRaw, 'unified_ruby_sdk/models/shared/hristimeoff_raw.rb'
    autoload :HrisTimeoffStatus, 'unified_ruby_sdk/models/shared/hristimeoff_status.rb'
    autoload :HrisTimeoffType, 'unified_ruby_sdk/models/shared/hristimeoff_type.rb'
    autoload :HrisTimeoff, 'unified_ruby_sdk/models/shared/hristimeoff.rb'
    autoload :ScimGroup, 'unified_ruby_sdk/models/shared/scimgroup.rb'
    autoload :PropertyScimGroupSchemas, 'unified_ruby_sdk/models/shared/property_scimgroup_schemas.rb'
    autoload :ResourceType, 'unified_ruby_sdk/models/shared/resourcetype.rb'
    autoload :PropertyScimGroupMeta, 'unified_ruby_sdk/models/shared/property_scimgroup_meta.rb'
    autoload :Operation, 'unified_ruby_sdk/models/shared/operation.rb'
    autoload :ScimGroupMemberType, 'unified_ruby_sdk/models/shared/scimgroupmember_type.rb'
    autoload :ScimGroupMember, 'unified_ruby_sdk/models/shared/scimgroupmember.rb'
    autoload :ContentType, 'unified_ruby_sdk/models/shared/content_type.rb'
    autoload :KmsCommentType, 'unified_ruby_sdk/models/shared/kmscomment_type.rb'
    autoload :KmsComment, 'unified_ruby_sdk/models/shared/kmscomment.rb'
    autoload :KmsPageType, 'unified_ruby_sdk/models/shared/kmspage_type.rb'
    autoload :KmsPage, 'unified_ruby_sdk/models/shared/kmspage.rb'
    autoload :KmsPageMetadata, 'unified_ruby_sdk/models/shared/kmspagemetadata.rb'
    autoload :KmsSpace, 'unified_ruby_sdk/models/shared/kmsspace.rb'
    autoload :TaskComment, 'unified_ruby_sdk/models/shared/taskcomment.rb'
    autoload :LmsClass, 'unified_ruby_sdk/models/shared/lmsclass.rb'
    autoload :LmsMediaType, 'unified_ruby_sdk/models/shared/lmsmedia_type.rb'
    autoload :LmsMedia, 'unified_ruby_sdk/models/shared/lmsmedia.rb'
    autoload :LmsCourse, 'unified_ruby_sdk/models/shared/lmscourse.rb'
    autoload :LmsInstructor, 'unified_ruby_sdk/models/shared/lmsinstructor.rb'
    autoload :LmsTelephoneType, 'unified_ruby_sdk/models/shared/lmstelephone_type.rb'
    autoload :LmsTelephone, 'unified_ruby_sdk/models/shared/lmstelephone.rb'
    autoload :LmsEmail, 'unified_ruby_sdk/models/shared/lmsemail.rb'
    autoload :LmsStudent, 'unified_ruby_sdk/models/shared/lmsstudent.rb'
    autoload :PropertyLmsStudentAddress, 'unified_ruby_sdk/models/shared/property_lmsstudent_address.rb'
    autoload :MarketingList, 'unified_ruby_sdk/models/shared/marketinglist.rb'
    autoload :MarketingMember, 'unified_ruby_sdk/models/shared/marketingmember.rb'
    autoload :MarketingEmailType, 'unified_ruby_sdk/models/shared/marketingemail_type.rb'
    autoload :MarketingEmail, 'unified_ruby_sdk/models/shared/marketingemail.rb'
    autoload :MessagingMessage, 'unified_ruby_sdk/models/shared/messagingmessage.rb'
    autoload :MessagingMember, 'unified_ruby_sdk/models/shared/messagingmember.rb'
    autoload :PropertyMessagingMessageAuthorMember, 'unified_ruby_sdk/models/shared/property_messagingmessage_author_member.rb'
    autoload :MessagingAttachment, 'unified_ruby_sdk/models/shared/messagingattachment.rb'
    autoload :MessagingChannel, 'unified_ruby_sdk/models/shared/messagingchannel.rb'
    autoload :MetadataMetadataRaw, 'unified_ruby_sdk/models/shared/metadatametadata_raw.rb'
    autoload :MetadataMetadataType, 'unified_ruby_sdk/models/shared/metadatametadata_type.rb'
    autoload :MetadataMetadata, 'unified_ruby_sdk/models/shared/metadatametadata.rb'
    autoload :PaymentLink, 'unified_ruby_sdk/models/shared/paymentlink.rb'
    autoload :PaymentLineitem, 'unified_ruby_sdk/models/shared/paymentlineitem.rb'
    autoload :PaymentPayment, 'unified_ruby_sdk/models/shared/paymentpayment.rb'
    autoload :IntervalUnit, 'unified_ruby_sdk/models/shared/interval_unit.rb'
    autoload :PaymentSubscriptionStatus, 'unified_ruby_sdk/models/shared/paymentsubscription_status.rb'
    autoload :PaymentSubscription, 'unified_ruby_sdk/models/shared/paymentsubscription.rb'
    autoload :PaymentPayoutStatus, 'unified_ruby_sdk/models/shared/paymentpayout_status.rb'
    autoload :PaymentPayout, 'unified_ruby_sdk/models/shared/paymentpayout.rb'
    autoload :PaymentRefundStatus, 'unified_ruby_sdk/models/shared/paymentrefund_status.rb'
    autoload :PaymentRefund, 'unified_ruby_sdk/models/shared/paymentrefund.rb'
    autoload :RepoBranch, 'unified_ruby_sdk/models/shared/repobranch.rb'
    autoload :RepoCommit, 'unified_ruby_sdk/models/shared/repocommit.rb'
    autoload :RepoPullrequestStatus, 'unified_ruby_sdk/models/shared/repopullrequest_status.rb'
    autoload :RepoPullrequest, 'unified_ruby_sdk/models/shared/repopullrequest.rb'
    autoload :RepoRepository, 'unified_ruby_sdk/models/shared/reporepository.rb'
    autoload :ScimUser, 'unified_ruby_sdk/models/shared/scimuser.rb'
    autoload :ScimRole, 'unified_ruby_sdk/models/shared/scimrole.rb'
    autoload :PropertyScimUserUrnIetfParamsScimSchemasExtensionPeakon20UserGender, 'unified_ruby_sdk/models/shared/property_scimuser_urn_ietf_params_scim_schemas_extension_peakon_2_0_user_gender.rb'
    autoload :PropertyScimUserUrnIetfParamsScimSchemasExtensionPeakon20User, 'unified_ruby_sdk/models/shared/property_scimuser_urn_ietf_params_scim_schemas_extension_peakon_2_0_user.rb'
    autoload :Ethnicity, 'unified_ruby_sdk/models/shared/ethnicity.rb'
    autoload :PropertyScimUserUrnIetfParamsScimSchemasExtensionLatticeAttributes10UserGender, 'unified_ruby_sdk/models/shared/property_scimuser_urn_ietf_params_scim_schemas_extension_lattice_attributes_1_0_user_gender.rb'
    autoload :SexualOrientation, 'unified_ruby_sdk/models/shared/sexualorientation.rb'
    autoload :PropertyScimUserUrnIetfParamsScimSchemasExtensionLatticeAttributes10User, 'unified_ruby_sdk/models/shared/property_scimuser_urn_ietf_params_scim_schemas_extension_lattice_attributes_1_0_user.rb'
    autoload :PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20UserGender, 'unified_ruby_sdk/models/shared/property_scimuser_urn_ietf_params_scim_schemas_extension_enterprise_2_0_user_gender.rb'
    autoload :PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20User, 'unified_ruby_sdk/models/shared/property_scimuser_urn_ietf_params_scim_schemas_extension_enterprise_2_0_user.rb'
    autoload :PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20UserManagerType, 'unified_ruby_sdk/models/shared/property_scimuser_urn_ietf_params_scim_schemas_extension_enterprise_2_0_user_manager_type.rb'
    autoload :PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20UserManager, 'unified_ruby_sdk/models/shared/property_scimuser_urn_ietf_params_scim_schemas_extension_enterprise_2_0_user_manager.rb'
    autoload :ScimManagerType, 'unified_ruby_sdk/models/shared/scimmanager_type.rb'
    autoload :ScimManager, 'unified_ruby_sdk/models/shared/scimmanager.rb'
    autoload :PropertyScimUserSchemas, 'unified_ruby_sdk/models/shared/property_scimuser_schemas.rb'
    autoload :ScimPhotoType, 'unified_ruby_sdk/models/shared/scimphoto_type.rb'
    autoload :ScimPhoto, 'unified_ruby_sdk/models/shared/scimphoto.rb'
    autoload :ScimPhoneNumberType, 'unified_ruby_sdk/models/shared/scimphonenumber_type.rb'
    autoload :ScimPhoneNumber, 'unified_ruby_sdk/models/shared/scimphonenumber.rb'
    autoload :PropertyScimUserName, 'unified_ruby_sdk/models/shared/property_scimuser_name.rb'
    autoload :PropertyScimUserMetaResourceType, 'unified_ruby_sdk/models/shared/property_scimuser_meta_resourcetype.rb'
    autoload :PropertyScimUserMeta, 'unified_ruby_sdk/models/shared/property_scimuser_meta.rb'
    autoload :ScimImsType, 'unified_ruby_sdk/models/shared/scimims_type.rb'
    autoload :ScimIms, 'unified_ruby_sdk/models/shared/scimims.rb'
    autoload :ScimUserGroupsType, 'unified_ruby_sdk/models/shared/scimusergroups_type.rb'
    autoload :ScimUserGroups, 'unified_ruby_sdk/models/shared/scimusergroups.rb'
    autoload :ScimEntitlement, 'unified_ruby_sdk/models/shared/scimentitlement.rb'
    autoload :ScimEmailType, 'unified_ruby_sdk/models/shared/scimemail_type.rb'
    autoload :ScimEmail, 'unified_ruby_sdk/models/shared/scimemail.rb'
    autoload :ScimAddressType, 'unified_ruby_sdk/models/shared/scimaddress_type.rb'
    autoload :ScimAddress, 'unified_ruby_sdk/models/shared/scimaddress.rb'
    autoload :StorageFileType, 'unified_ruby_sdk/models/shared/storagefile_type.rb'
    autoload :StorageFile, 'unified_ruby_sdk/models/shared/storagefile.rb'
    autoload :StoragePermission, 'unified_ruby_sdk/models/shared/storagepermission.rb'
    autoload :PropertyStoragePermissionRoles, 'unified_ruby_sdk/models/shared/property_storagepermission_roles.rb'
    autoload :TaskProject, 'unified_ruby_sdk/models/shared/taskproject.rb'
    autoload :TaskTaskStatus, 'unified_ruby_sdk/models/shared/tasktask_status.rb'
    autoload :TaskTask, 'unified_ruby_sdk/models/shared/tasktask.rb'
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
    autoload :PropertyConnectionAuthMeta, 'unified_ruby_sdk/models/shared/property_connection_auth_meta.rb'
    autoload :PropertyConnectionAuth, 'unified_ruby_sdk/models/shared/property_connection_auth.rb'
    autoload :Event, 'unified_ruby_sdk/models/shared/event.rb'
    autoload :Meta, 'unified_ruby_sdk/models/shared/meta.rb'
    autoload :ObjectType, 'unified_ruby_sdk/models/shared/object_type.rb'
    autoload :WebhookType, 'unified_ruby_sdk/models/shared/webhook_type.rb'
    autoload :Webhook, 'unified_ruby_sdk/models/shared/webhook.rb'
    autoload :ApiCallType, 'unified_ruby_sdk/models/shared/apicall_type.rb'
    autoload :ApiCall, 'unified_ruby_sdk/models/shared/apicall.rb'
    autoload :Integration, 'unified_ruby_sdk/models/shared/integration.rb'
    autoload :FromWebhook, 'unified_ruby_sdk/models/shared/from_webhook.rb'
    autoload :ListAccountId, 'unified_ruby_sdk/models/shared/list_account_id.rb'
    autoload :ListApplicationId, 'unified_ruby_sdk/models/shared/list_application_id.rb'
    autoload :ListCandidateId, 'unified_ruby_sdk/models/shared/list_candidate_id.rb'
    autoload :ListChannelId, 'unified_ruby_sdk/models/shared/list_channel_id.rb'
    autoload :ListClassId, 'unified_ruby_sdk/models/shared/list_class_id.rb'
    autoload :ListCollectionId, 'unified_ruby_sdk/models/shared/list_collection_id.rb'
    autoload :ListCompanyId, 'unified_ruby_sdk/models/shared/list_company_id.rb'
    autoload :ListContactId, 'unified_ruby_sdk/models/shared/list_contact_id.rb'
    autoload :ListCourseId, 'unified_ruby_sdk/models/shared/list_course_id.rb'
    autoload :ListCustomerId, 'unified_ruby_sdk/models/shared/list_customer_id.rb'
    autoload :ListDealId, 'unified_ruby_sdk/models/shared/list_deal_id.rb'
    autoload :ListInstructorId, 'unified_ruby_sdk/models/shared/list_instructor_id.rb'
    autoload :ListInterviewId, 'unified_ruby_sdk/models/shared/list_interview_id.rb'
    autoload :ListInvoiceId, 'unified_ruby_sdk/models/shared/list_invoice_id.rb'
    autoload :ListItemId, 'unified_ruby_sdk/models/shared/list_item_id.rb'
    autoload :ListItemVariantId, 'unified_ruby_sdk/models/shared/list_item_variant_id.rb'
    autoload :ListJobId, 'unified_ruby_sdk/models/shared/list_job_id.rb'
    autoload :ListLimit, 'unified_ruby_sdk/models/shared/list_limit.rb'
    autoload :ListLinkId, 'unified_ruby_sdk/models/shared/list_link_id.rb'
    autoload :ListListId, 'unified_ruby_sdk/models/shared/list_list_id.rb'
    autoload :ListLocationId, 'unified_ruby_sdk/models/shared/list_location_id.rb'
    autoload :ListOffset, 'unified_ruby_sdk/models/shared/list_offset.rb'
    autoload :ListOrder, 'unified_ruby_sdk/models/shared/list_order.rb'
    autoload :ListOrgId, 'unified_ruby_sdk/models/shared/list_org_id.rb'
    autoload :ListPageId, 'unified_ruby_sdk/models/shared/list_page_id.rb'
    autoload :ListParentId, 'unified_ruby_sdk/models/shared/list_parent_id.rb'
    autoload :ListProjectId, 'unified_ruby_sdk/models/shared/list_project_id.rb'
    autoload :ListQuery, 'unified_ruby_sdk/models/shared/list_query.rb'
    autoload :ListRawFields, 'unified_ruby_sdk/models/shared/list_raw_fields.rb'
    autoload :ListRepoId, 'unified_ruby_sdk/models/shared/list_repo_id.rb'
    autoload :ListRootId, 'unified_ruby_sdk/models/shared/list_root_id.rb'
    autoload :ListSortByCreatedAt, 'unified_ruby_sdk/models/shared/list_sort_by_created_at.rb'
    autoload :ListSortByName, 'unified_ruby_sdk/models/shared/list_sort_by_name.rb'
    autoload :ListSortByUpdatedAt, 'unified_ruby_sdk/models/shared/list_sort_by_updated_at.rb'
    autoload :ListSpaceId, 'unified_ruby_sdk/models/shared/list_space_id.rb'
    autoload :ListStudentId, 'unified_ruby_sdk/models/shared/list_student_id.rb'
    autoload :ListTaskId, 'unified_ruby_sdk/models/shared/list_task_id.rb'
    autoload :ListTicketId, 'unified_ruby_sdk/models/shared/list_ticket_id.rb'
    autoload :ListType, 'unified_ruby_sdk/models/shared/list_type.rb'
    autoload :ListUpdatedGte, 'unified_ruby_sdk/models/shared/list_updated_gte.rb'
    autoload :ListUserId, 'unified_ruby_sdk/models/shared/list_user_id.rb'
    autoload :NativeWebhookParentId, 'unified_ruby_sdk/models/shared/native_webhook_parent_id.rb'
    autoload :NativeWebhookProjectId, 'unified_ruby_sdk/models/shared/native_webhook_project_id.rb'
    autoload :SearchDomain, 'unified_ruby_sdk/models/shared/search_domain.rb'
    autoload :SearchEmail, 'unified_ruby_sdk/models/shared/search_email.rb'
    autoload :SearchLinkedinurl, 'unified_ruby_sdk/models/shared/search_linkedinurl.rb'
    autoload :SearchName, 'unified_ruby_sdk/models/shared/search_name.rb'
    autoload :SearchTwitter, 'unified_ruby_sdk/models/shared/search_twitter.rb'
    autoload :VirtualWebhookChannelId, 'unified_ruby_sdk/models/shared/virtual_webhook_channel_id.rb'
    autoload :VirtualWebhookCompanyId, 'unified_ruby_sdk/models/shared/virtual_webhook_company_id.rb'
    autoload :VirtualWebhookContactId, 'unified_ruby_sdk/models/shared/virtual_webhook_contact_id.rb'
    autoload :VirtualWebhookDealId, 'unified_ruby_sdk/models/shared/virtual_webhook_deal_id.rb'
    autoload :VirtualWebhookJobId, 'unified_ruby_sdk/models/shared/virtual_webhook_job_id.rb'
    autoload :VirtualWebhookLimit, 'unified_ruby_sdk/models/shared/virtual_webhook_limit.rb'
    autoload :VirtualWebhookParentId, 'unified_ruby_sdk/models/shared/virtual_webhook_parent_id.rb'
    autoload :VirtualWebhookTicketId, 'unified_ruby_sdk/models/shared/virtual_webhook_ticket_id.rb'
    autoload :VirtualWebhookType, 'unified_ruby_sdk/models/shared/virtual_webhook_type.rb'
    autoload :VirtualWebhookUpdatedGte, 'unified_ruby_sdk/models/shared/virtual_webhook_updated_gte.rb'
    autoload :VirtualWebhookUserId, 'unified_ruby_sdk/models/shared/virtual_webhook_user_id.rb'
    autoload :IntegrationSupport, 'unified_ruby_sdk/models/shared/integrationsupport.rb'
    autoload :PropertyIntegrationSupportWebhookEvents, 'unified_ruby_sdk/models/shared/property_integrationsupport_webhook_events.rb'
    autoload :PropertyIntegrationSupportWebhookEventsUpdated, 'unified_ruby_sdk/models/shared/property_integrationsupport_webhook_events_updated.rb'
    autoload :PropertyIntegrationSupportWebhookEventsDeleted, 'unified_ruby_sdk/models/shared/property_integrationsupport_webhook_events_deleted.rb'
    autoload :PropertyIntegrationSupportWebhookEventsCreated, 'unified_ruby_sdk/models/shared/property_integrationsupport_webhook_events_created.rb'
    autoload :PropertyIntegrationCategories, 'unified_ruby_sdk/models/shared/property_integration_categories.rb'
    autoload :IssueStatus, 'unified_ruby_sdk/models/shared/issue_status.rb'
    autoload :Issue, 'unified_ruby_sdk/models/shared/issue.rb'
    autoload :Security, 'unified_ruby_sdk/models/shared/security.rb'
  end
end
