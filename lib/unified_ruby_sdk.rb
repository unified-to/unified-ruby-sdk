# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require_relative 'unified-to/utils/utils'
require_relative 'unified-to/utils/metadata_fields'
require_relative 'unified-to/sdk'
require_relative 'unified-to/models/shared/accountingaccount'
require_relative 'unified-to/models/shared/property_accountingaccount_raw'
require_relative 'unified-to/models/shared/accountingcustomer'
require_relative 'unified-to/models/shared/accountingtelephone'
require_relative 'unified-to/models/shared/property_accountingcustomer_shipping_address'
require_relative 'unified-to/models/shared/property_accountingcustomer_raw'
require_relative 'unified-to/models/shared/accountingemail'
require_relative 'unified-to/models/shared/property_accountingcustomer_billing_address'
require_relative 'unified-to/models/shared/accountinginvoice'
require_relative 'unified-to/models/shared/property_accountinginvoice_raw'
require_relative 'unified-to/models/shared/accountinglineitem'
require_relative 'unified-to/models/shared/property_accountinglineitem_raw'
require_relative 'unified-to/models/shared/accountingitem'
require_relative 'unified-to/models/shared/property_accountingitem_raw'
require_relative 'unified-to/models/shared/accountingpayment'
require_relative 'unified-to/models/shared/property_accountingpayment_raw'
require_relative 'unified-to/models/shared/accountingtaxrate'
require_relative 'unified-to/models/shared/property_accountingtaxrate_raw'
require_relative 'unified-to/models/shared/accountingtransaction'
require_relative 'unified-to/models/shared/property_accountingtransaction_raw'
require_relative 'unified-to/models/shared/accountingtransactionlineitem'
require_relative 'unified-to/models/shared/accountingorganization'
require_relative 'unified-to/models/shared/property_accountingorganization_raw'
require_relative 'unified-to/models/shared/property_accountingorganization_address'
require_relative 'unified-to/models/shared/ticketingcustomer'
require_relative 'unified-to/models/shared/ticketingtelephone'
require_relative 'unified-to/models/shared/property_ticketingcustomer_raw'
require_relative 'unified-to/models/shared/ticketingemail'
require_relative 'unified-to/models/shared/atsapplication'
require_relative 'unified-to/models/shared/property_atsapplication_raw'
require_relative 'unified-to/models/shared/atscandidate'
require_relative 'unified-to/models/shared/atstelephone'
require_relative 'unified-to/models/shared/property_atscandidate_raw'
require_relative 'unified-to/models/shared/atsemail'
require_relative 'unified-to/models/shared/property_atscandidate_address'
require_relative 'unified-to/models/shared/atsdocument'
require_relative 'unified-to/models/shared/property_atsdocument_raw'
require_relative 'unified-to/models/shared/atsinterview'
require_relative 'unified-to/models/shared/property_atsinterview_raw'
require_relative 'unified-to/models/shared/atsjob'
require_relative 'unified-to/models/shared/property_atsjob_raw'
require_relative 'unified-to/models/shared/atscompensation'
require_relative 'unified-to/models/shared/atsaddress'
require_relative 'unified-to/models/shared/atsscorecard'
require_relative 'unified-to/models/shared/property_atsscorecard_raw'
require_relative 'unified-to/models/shared/atsstatus'
require_relative 'unified-to/models/shared/property_atsstatus_raw'
require_relative 'unified-to/models/shared/crmcompany'
require_relative 'unified-to/models/shared/crmtelephone'
require_relative 'unified-to/models/shared/property_crmcompany_raw'
require_relative 'unified-to/models/shared/crmemail'
require_relative 'unified-to/models/shared/property_crmcompany_address'
require_relative 'unified-to/models/shared/crmcontact'
require_relative 'unified-to/models/shared/property_crmcontact_raw'
require_relative 'unified-to/models/shared/property_crmcontact_address'
require_relative 'unified-to/models/shared/crmdeal'
require_relative 'unified-to/models/shared/property_crmdeal_raw'
require_relative 'unified-to/models/shared/crmevent'
require_relative 'unified-to/models/shared/property_crmevent_task'
require_relative 'unified-to/models/shared/property_crmevent_raw'
require_relative 'unified-to/models/shared/property_crmevent_note'
require_relative 'unified-to/models/shared/property_crmevent_meeting'
require_relative 'unified-to/models/shared/property_crmevent_email'
require_relative 'unified-to/models/shared/property_crmevent_call'
require_relative 'unified-to/models/shared/crmlead'
require_relative 'unified-to/models/shared/property_crmlead_raw'
require_relative 'unified-to/models/shared/property_crmlead_address'
require_relative 'unified-to/models/shared/crmpipeline'
require_relative 'unified-to/models/shared/property_crmpipeline_raw'
require_relative 'unified-to/models/shared/enrichcompany'
require_relative 'unified-to/models/shared/enrichtelephone'
require_relative 'unified-to/models/shared/property_enrichcompany_raw'
require_relative 'unified-to/models/shared/property_enrichcompany_address'
require_relative 'unified-to/models/shared/uccontact'
require_relative 'unified-to/models/shared/uctelephone'
require_relative 'unified-to/models/shared/property_uccontact_raw'
require_relative 'unified-to/models/shared/ucemail'
require_relative 'unified-to/models/shared/enrichperson'
require_relative 'unified-to/models/shared/enrichpersonworkhistory'
require_relative 'unified-to/models/shared/property_enrichperson_raw'
require_relative 'unified-to/models/shared/enrichemail'
require_relative 'unified-to/models/shared/property_enrichperson_address'
require_relative 'unified-to/models/shared/hrisemployee'
require_relative 'unified-to/models/shared/hristelephone'
require_relative 'unified-to/models/shared/property_hrisemployee_raw'
require_relative 'unified-to/models/shared/hrisemail'
require_relative 'unified-to/models/shared/property_hrisemployee_address'
require_relative 'unified-to/models/shared/hrisgroup'
require_relative 'unified-to/models/shared/property_hrisgroup_raw'
require_relative 'unified-to/models/shared/marketinglist'
require_relative 'unified-to/models/shared/property_marketinglist_raw'
require_relative 'unified-to/models/shared/marketingmember'
require_relative 'unified-to/models/shared/property_marketingmember_raw'
require_relative 'unified-to/models/shared/marketingemail'
require_relative 'unified-to/models/shared/undefined'
require_relative 'unified-to/models/shared/storagefile'
require_relative 'unified-to/models/shared/property_storagefile_raw'
require_relative 'unified-to/models/shared/storagepermission'
require_relative 'unified-to/models/shared/property_storagepermission_roles'
require_relative 'unified-to/models/shared/ticketingnote'
require_relative 'unified-to/models/shared/property_ticketingnote_raw'
require_relative 'unified-to/models/shared/ticketingticket'
require_relative 'unified-to/models/shared/property_ticketingticket_raw'
require_relative 'unified-to/models/shared/uccall'
require_relative 'unified-to/models/shared/property_uccall_telephone'
require_relative 'unified-to/models/shared/property_uccall_raw'
require_relative 'unified-to/models/shared/connection'
require_relative 'unified-to/models/shared/property_connection_permissions'
require_relative 'unified-to/models/shared/property_connection_categories'
require_relative 'unified-to/models/shared/property_connection_auth'
require_relative 'unified-to/models/shared/property_property_connection_auth_meta'
require_relative 'unified-to/models/shared/webhook'
require_relative 'unified-to/models/shared/property_webhook_meta'
require_relative 'unified-to/models/shared/apicall'
require_relative 'unified-to/models/shared/integration'
require_relative 'unified-to/models/shared/integrationsupport'
require_relative 'unified-to/models/shared/property_integrationsupport_webhook_events'
require_relative 'unified-to/models/shared/property_integrationsupport_outbound_fields'
require_relative 'unified-to/models/shared/property_integrationsupport_inbound_fields'
require_relative 'unified-to/models/shared/property_integration_categories'
require_relative 'unified-to/models/shared/security'
require_relative 'unified-to/models/operations/createaccountingaccount'
require_relative 'unified-to/models/operations/createaccountingcustomer'
require_relative 'unified-to/models/operations/createaccountinginvoice'
require_relative 'unified-to/models/operations/createaccountingitem'
require_relative 'unified-to/models/operations/createaccountingpayment'
require_relative 'unified-to/models/operations/createaccountingtaxrate'
require_relative 'unified-to/models/operations/createaccountingtransaction'
require_relative 'unified-to/models/operations/createatsapplication'
require_relative 'unified-to/models/operations/createatscandidate'
require_relative 'unified-to/models/operations/createatsdocument'
require_relative 'unified-to/models/operations/createatsinterview'
require_relative 'unified-to/models/operations/createatsjob'
require_relative 'unified-to/models/operations/createatsscorecard'
require_relative 'unified-to/models/operations/createcrmcompany'
require_relative 'unified-to/models/operations/createcrmcontact'
require_relative 'unified-to/models/operations/createcrmdeal'
require_relative 'unified-to/models/operations/createcrmevent'
require_relative 'unified-to/models/operations/createcrmlead'
require_relative 'unified-to/models/operations/createcrmpipeline'
require_relative 'unified-to/models/operations/createhrisemployee'
require_relative 'unified-to/models/operations/createhrisgroup'
require_relative 'unified-to/models/operations/createmartechlist'
require_relative 'unified-to/models/operations/createmartechmember'
require_relative 'unified-to/models/operations/createpassthrough'
require_relative 'unified-to/models/operations/createstoragefile'
require_relative 'unified-to/models/operations/createticketingcustomer'
require_relative 'unified-to/models/operations/createticketingnote'
require_relative 'unified-to/models/operations/createticketingticket'
require_relative 'unified-to/models/operations/createuccontact'
require_relative 'unified-to/models/operations/createunifiedconnection'
require_relative 'unified-to/models/operations/createunifiedwebhook'
require_relative 'unified-to/models/operations/getaccountingaccount'
require_relative 'unified-to/models/operations/getaccountingcustomer'
require_relative 'unified-to/models/operations/getaccountinginvoice'
require_relative 'unified-to/models/operations/getaccountingitem'
require_relative 'unified-to/models/operations/getaccountingorganization'
require_relative 'unified-to/models/operations/getaccountingpayment'
require_relative 'unified-to/models/operations/getaccountingtaxrate'
require_relative 'unified-to/models/operations/getaccountingtransaction'
require_relative 'unified-to/models/operations/getatsapplication'
require_relative 'unified-to/models/operations/getatscandidate'
require_relative 'unified-to/models/operations/getatsdocument'
require_relative 'unified-to/models/operations/getatsinterview'
require_relative 'unified-to/models/operations/getatsjob'
require_relative 'unified-to/models/operations/getatsscorecard'
require_relative 'unified-to/models/operations/getcrmcompany'
require_relative 'unified-to/models/operations/getcrmcontact'
require_relative 'unified-to/models/operations/getcrmdeal'
require_relative 'unified-to/models/operations/getcrmevent'
require_relative 'unified-to/models/operations/getcrmlead'
require_relative 'unified-to/models/operations/getcrmpipeline'
require_relative 'unified-to/models/operations/gethrisemployee'
require_relative 'unified-to/models/operations/gethrisgroup'
require_relative 'unified-to/models/operations/getmartechlist'
require_relative 'unified-to/models/operations/getmartechmember'
require_relative 'unified-to/models/operations/getstoragefile'
require_relative 'unified-to/models/operations/getticketingcustomer'
require_relative 'unified-to/models/operations/getticketingnote'
require_relative 'unified-to/models/operations/getticketingticket'
require_relative 'unified-to/models/operations/getuccontact'
require_relative 'unified-to/models/operations/getunifiedapicall'
require_relative 'unified-to/models/operations/getunifiedconnection'
require_relative 'unified-to/models/operations/getunifiedintegrationauth'
require_relative 'unified-to/models/operations/getunifiedintegrationlogin'
require_relative 'unified-to/models/operations/getunifiedwebhook'
require_relative 'unified-to/models/operations/listaccountingaccounts'
require_relative 'unified-to/models/operations/listaccountingcustomers'
require_relative 'unified-to/models/operations/listaccountinginvoices'
require_relative 'unified-to/models/operations/listaccountingitems'
require_relative 'unified-to/models/operations/listaccountingorganizations'
require_relative 'unified-to/models/operations/listaccountingpayments'
require_relative 'unified-to/models/operations/listaccountingtaxrates'
require_relative 'unified-to/models/operations/listaccountingtransactions'
require_relative 'unified-to/models/operations/listatsapplications'
require_relative 'unified-to/models/operations/listatsapplicationstatuses'
require_relative 'unified-to/models/operations/listatscandidates'
require_relative 'unified-to/models/operations/listatsdocuments'
require_relative 'unified-to/models/operations/listatsinterviews'
require_relative 'unified-to/models/operations/listatsjobs'
require_relative 'unified-to/models/operations/listatsscorecards'
require_relative 'unified-to/models/operations/listcrmcompanies'
require_relative 'unified-to/models/operations/listcrmcontacts'
require_relative 'unified-to/models/operations/listcrmdeals'
require_relative 'unified-to/models/operations/listcrmevents'
require_relative 'unified-to/models/operations/listcrmleads'
require_relative 'unified-to/models/operations/listcrmpipelines'
require_relative 'unified-to/models/operations/listenrichcompanies'
require_relative 'unified-to/models/operations/listenrichpeople'
require_relative 'unified-to/models/operations/listhrisemployees'
require_relative 'unified-to/models/operations/listhrisgroups'
require_relative 'unified-to/models/operations/listmartechlists'
require_relative 'unified-to/models/operations/listmartechmembers'
require_relative 'unified-to/models/operations/listpassthroughs'
require_relative 'unified-to/models/operations/liststoragefiles'
require_relative 'unified-to/models/operations/listticketingcustomers'
require_relative 'unified-to/models/operations/listticketingnotes'
require_relative 'unified-to/models/operations/listticketingtickets'
require_relative 'unified-to/models/operations/listuccalls'
require_relative 'unified-to/models/operations/listuccontacts'
require_relative 'unified-to/models/operations/listunifiedapicalls'
require_relative 'unified-to/models/operations/listunifiedconnections'
require_relative 'unified-to/models/operations/listunifiedintegrations'
require_relative 'unified-to/models/operations/listunifiedintegrationworkspaces'
require_relative 'unified-to/models/operations/listunifiedwebhooks'
require_relative 'unified-to/models/operations/patchaccountingaccount'
require_relative 'unified-to/models/operations/patchaccountingcustomer'
require_relative 'unified-to/models/operations/patchaccountinginvoice'
require_relative 'unified-to/models/operations/patchaccountingitem'
require_relative 'unified-to/models/operations/patchaccountingpayment'
require_relative 'unified-to/models/operations/patchaccountingtaxrate'
require_relative 'unified-to/models/operations/patchaccountingtransaction'
require_relative 'unified-to/models/operations/patchatsapplication'
require_relative 'unified-to/models/operations/patchatscandidate'
require_relative 'unified-to/models/operations/patchatsdocument'
require_relative 'unified-to/models/operations/patchatsinterview'
require_relative 'unified-to/models/operations/patchatsjob'
require_relative 'unified-to/models/operations/patchatsscorecard'
require_relative 'unified-to/models/operations/patchcrmcompany'
require_relative 'unified-to/models/operations/patchcrmcontact'
require_relative 'unified-to/models/operations/patchcrmdeal'
require_relative 'unified-to/models/operations/patchcrmevent'
require_relative 'unified-to/models/operations/patchcrmlead'
require_relative 'unified-to/models/operations/patchcrmpipeline'
require_relative 'unified-to/models/operations/patchhrisemployee'
require_relative 'unified-to/models/operations/patchhrisgroup'
require_relative 'unified-to/models/operations/patchmartechlist'
require_relative 'unified-to/models/operations/patchmartechmember'
require_relative 'unified-to/models/operations/patchpassthrough'
require_relative 'unified-to/models/operations/patchstoragefile'
require_relative 'unified-to/models/operations/patchticketingcustomer'
require_relative 'unified-to/models/operations/patchticketingnote'
require_relative 'unified-to/models/operations/patchticketingticket'
require_relative 'unified-to/models/operations/patchuccontact'
require_relative 'unified-to/models/operations/patchunifiedconnection'
require_relative 'unified-to/models/operations/patchunifiedwebhooktrigger'
require_relative 'unified-to/models/operations/removeaccountingaccount'
require_relative 'unified-to/models/operations/removeaccountingcustomer'
require_relative 'unified-to/models/operations/removeaccountinginvoice'
require_relative 'unified-to/models/operations/removeaccountingitem'
require_relative 'unified-to/models/operations/removeaccountingpayment'
require_relative 'unified-to/models/operations/removeaccountingtaxrate'
require_relative 'unified-to/models/operations/removeaccountingtransaction'
require_relative 'unified-to/models/operations/removeatsapplication'
require_relative 'unified-to/models/operations/removeatscandidate'
require_relative 'unified-to/models/operations/removeatsdocument'
require_relative 'unified-to/models/operations/removeatsinterview'
require_relative 'unified-to/models/operations/removeatsjob'
require_relative 'unified-to/models/operations/removeatsscorecard'
require_relative 'unified-to/models/operations/removecrmcompany'
require_relative 'unified-to/models/operations/removecrmcontact'
require_relative 'unified-to/models/operations/removecrmdeal'
require_relative 'unified-to/models/operations/removecrmevent'
require_relative 'unified-to/models/operations/removecrmlead'
require_relative 'unified-to/models/operations/removecrmpipeline'
require_relative 'unified-to/models/operations/removehrisemployee'
require_relative 'unified-to/models/operations/removehrisgroup'
require_relative 'unified-to/models/operations/removemartechlist'
require_relative 'unified-to/models/operations/removemartechmember'
require_relative 'unified-to/models/operations/removepassthrough'
require_relative 'unified-to/models/operations/removestoragefile'
require_relative 'unified-to/models/operations/removeticketingcustomer'
require_relative 'unified-to/models/operations/removeticketingnote'
require_relative 'unified-to/models/operations/removeticketingticket'
require_relative 'unified-to/models/operations/removeuccontact'
require_relative 'unified-to/models/operations/removeunifiedconnection'
require_relative 'unified-to/models/operations/removeunifiedwebhook'
require_relative 'unified-to/models/operations/updateaccountingaccount'
require_relative 'unified-to/models/operations/updateaccountingcustomer'
require_relative 'unified-to/models/operations/updateaccountinginvoice'
require_relative 'unified-to/models/operations/updateaccountingitem'
require_relative 'unified-to/models/operations/updateaccountingpayment'
require_relative 'unified-to/models/operations/updateaccountingtaxrate'
require_relative 'unified-to/models/operations/updateaccountingtransaction'
require_relative 'unified-to/models/operations/updateatsapplication'
require_relative 'unified-to/models/operations/updateatscandidate'
require_relative 'unified-to/models/operations/updateatsdocument'
require_relative 'unified-to/models/operations/updateatsinterview'
require_relative 'unified-to/models/operations/updateatsjob'
require_relative 'unified-to/models/operations/updateatsscorecard'
require_relative 'unified-to/models/operations/updatecrmcompany'
require_relative 'unified-to/models/operations/updatecrmcontact'
require_relative 'unified-to/models/operations/updatecrmdeal'
require_relative 'unified-to/models/operations/updatecrmevent'
require_relative 'unified-to/models/operations/updatecrmlead'
require_relative 'unified-to/models/operations/updatecrmpipeline'
require_relative 'unified-to/models/operations/updatehrisemployee'
require_relative 'unified-to/models/operations/updatehrisgroup'
require_relative 'unified-to/models/operations/updatemartechlist'
require_relative 'unified-to/models/operations/updatemartechmember'
require_relative 'unified-to/models/operations/updatepassthrough'
require_relative 'unified-to/models/operations/updatestoragefile'
require_relative 'unified-to/models/operations/updateticketingcustomer'
require_relative 'unified-to/models/operations/updateticketingnote'
require_relative 'unified-to/models/operations/updateticketingticket'
require_relative 'unified-to/models/operations/updateuccontact'
require_relative 'unified-to/models/operations/updateunifiedconnection'
require_relative 'unified-to/models/operations/updateunifiedwebhooktrigger'
require_relative 'unified-to/sdkconfiguration'
require_relative 'unified-to/accounting'
require_relative 'unified-to/account'
require_relative 'unified-to/customer'
require_relative 'unified-to/invoice'
require_relative 'unified-to/item'
require_relative 'unified-to/organization'
require_relative 'unified-to/payment'
require_relative 'unified-to/taxrate'
require_relative 'unified-to/transaction'
require_relative 'unified-to/ats'
require_relative 'unified-to/application'
require_relative 'unified-to/applicationstatus'
require_relative 'unified-to/candidate'
require_relative 'unified-to/document'
require_relative 'unified-to/interview'
require_relative 'unified-to/job'
require_relative 'unified-to/scorecard'
require_relative 'unified-to/crm'
require_relative 'unified-to/company'
require_relative 'unified-to/contact'
require_relative 'unified-to/deal'
require_relative 'unified-to/event'
require_relative 'unified-to/lead'
require_relative 'unified-to/pipeline'
require_relative 'unified-to/enrich'
require_relative 'unified-to/person'
require_relative 'unified-to/hris'
require_relative 'unified-to/employee'
require_relative 'unified-to/group'
require_relative 'unified-to/martech'
require_relative 'unified-to/list'
require_relative 'unified-to/member'
require_relative 'unified-to/passthrough'
require_relative 'unified-to/storage'
require_relative 'unified-to/file'
require_relative 'unified-to/ticketing'
require_relative 'unified-to/note'
require_relative 'unified-to/ticket'
require_relative 'unified-to/uc'
require_relative 'unified-to/call'
require_relative 'unified-to/unified'
require_relative 'unified-to/apicall'
require_relative 'unified-to/connection'
require_relative 'unified-to/integration'
require_relative 'unified-to/auth'
require_relative 'unified-to/login'
require_relative 'unified-to/webhook'

module UnifiedRubySDK
end
