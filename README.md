# Template SDK

<div align="left">
    <a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>   
</div>

## How to use this repository

**👀** This template repository is designed to bootstrap a [Speakeasy managed SDK repository](https://speakeasyapi.dev/docs/create-client-sdks/) using Github's repository clone feature. Once this repository is setup it will automatically keep your SDK up to date and published to a package manager. 


### Creating an SDK

1. To get started, simply clone the repository by clicking on the "Use template" button and give it a name.
   
![Screenshot 2023-09-06 at 09 20 52](https://github.com/speakeasy-sdks/template-sdk/assets/68016351/b4cf4e43-db4e-455a-9359-0f09f942b997)

3. Configure the Speakeasy workflow to generate the SDK. Go to the [generation workflow file](https://github.com/speakeasy-sdks/template-sdk/blob/main/.github/workflows/speakeasy_sdk_generation.yml) and configure the `language`, `mode` and `location` of your openapi document. For complete documentation on all the available generation configurations, see [here](https://speakeasyapi.dev/docs/create-client-sdks/advanced-setup/github-setup/). You will also need to add a `SPEAKEASY_API_KEY` as a repository secret. If you don't already have a key you can get one by making a workspace on Speakeasy [here](https://app.speakeasyapi.dev/workspaces/cl6augut900003b6b06012z1s).

4. Configure the Speakeasy workflow to publish the SDK. Go to the [publishing workflow file](https://github.com/speakeasy-sdks/template-sdk/blob/main/.github/workflows/speakeasy_sdk_publish.yml) and configure any relevant package manager credentials as repository secrets. For complete documentation on all the available publishing configurations, see [here](https://speakeasyapi.dev/docs/package-publishing/).

5. Configure the generation by editing the `gen.yaml` file in the root of the repo. This file controls the generator and determines various attributes of the SDK like `packageName`, `sdkClassName`, inlining of parameters, and other ergonomics.

6. Finally go to the Actions tab, choose the generation workflow and click "Force Generate". This will trigger a new generation of your SDK using the configuration you provided above. Depending on whether you configured `pr` or `direct` mode above your updated SDK will appear in PR or in the main branch.

![Screenshot 2023-09-06 at 10 01 46](https://github.com/speakeasy-sdks/template-sdk/assets/68016351/35828982-c6de-4a5c-84f5-ae2b4224cece)

🚀 You should have a working SDK for your API 🙂 . To check out all the features of the SDK please see our docs [site](https://speakeasyapi.dev/docs/create-client-sdks/).

### Local development

Once you have the SDK setup you may want to iterate on the SDK. Speakeasy supports OpenAPI vendor extensions that can be added to your spec to customize the SDK ergonomics (method names, namespacing resources etc.) and functionality (adding retries, pagination, multiple server support etc)

To get started install the Speakeasy CLI.

In your terminal, run:

```bash
brew install speakeasy-api/homebrew-tap/speakeasy
```
Once you annonate your spec with an extension you will want to run `speakeasy validate` to check the spec for correctness and `speakeasy generate` to recreate the SDK locally. More documentation on OpenAPI extensions [here](https://speakeasyapi.dev/docs/customize-sdks/namespaces/). Here's an example of adding a multiple server support to the spec so that your SDK supports production and sandbox versions of your API. 

```yaml
info:
  title: Example
  version: 0.0.1
servers:
  - url: https://prod.example.com # Used as the default URL by the SDK
    description: Our production environment
    x-speakeasy-server-id: prod
  - url: https://sandbox.example.com
    description: Our sandbox environment
    x-speakeasy-server-id: sandbox
```

Once you're finished iterating and happy with the output push only the latest version of spec into the repo and regenerate the SDK using step 6 above.

<!-- Start SDK Installation [installation] -->
## SDK Installation

```bash
gem install specific_install
gem specific_install https://github.com/unified-to/unified-ruby-sdk 
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAccountingAccountRequest.new(
  connection_id="string",
  accounting_account=Shared::AccountingAccount.new(
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
  ),
)
    
res = s.accounting.create_accounting_account(connection_id="string", accounting_account=Shared::AccountingAccount.new(
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
  ))

if ! res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

### [Accounting](docs/sdks/accounting/README.md)

* [create_accounting_account](docs/sdks/accounting/README.md#create_accounting_account) - Create an account
* [create_accounting_customer](docs/sdks/accounting/README.md#create_accounting_customer) - Create a customer
* [create_accounting_invoice](docs/sdks/accounting/README.md#create_accounting_invoice) - Create a invoice
* [create_accounting_payment](docs/sdks/accounting/README.md#create_accounting_payment) - Create a payment
* [create_accounting_transaction](docs/sdks/accounting/README.md#create_accounting_transaction) - Create a transaction
* [get_accounting_account](docs/sdks/accounting/README.md#get_accounting_account) - Retrieve an account
* [get_accounting_customer](docs/sdks/accounting/README.md#get_accounting_customer) - Retrieve a customer
* [get_accounting_invoice](docs/sdks/accounting/README.md#get_accounting_invoice) - Retrieve a invoice
* [get_accounting_payment](docs/sdks/accounting/README.md#get_accounting_payment) - Retrieve a payment
* [get_accounting_transaction](docs/sdks/accounting/README.md#get_accounting_transaction) - Retrieve a transaction
* [list_accounting_accounts](docs/sdks/accounting/README.md#list_accounting_accounts) - List all accounts
* [list_accounting_customers](docs/sdks/accounting/README.md#list_accounting_customers) - List all customers
* [list_accounting_invoices](docs/sdks/accounting/README.md#list_accounting_invoices) - List all invoices
* [list_accounting_payments](docs/sdks/accounting/README.md#list_accounting_payments) - List all payments
* [list_accounting_transactions](docs/sdks/accounting/README.md#list_accounting_transactions) - List all transactions
* [patch_accounting_account](docs/sdks/accounting/README.md#patch_accounting_account) - Update an account
* [patch_accounting_customer](docs/sdks/accounting/README.md#patch_accounting_customer) - Update a customer
* [patch_accounting_invoice](docs/sdks/accounting/README.md#patch_accounting_invoice) - Update a invoice
* [patch_accounting_payment](docs/sdks/accounting/README.md#patch_accounting_payment) - Update a payment
* [patch_accounting_transaction](docs/sdks/accounting/README.md#patch_accounting_transaction) - Update a transaction
* [remove_accounting_account](docs/sdks/accounting/README.md#remove_accounting_account) - Remove an account
* [remove_accounting_customer](docs/sdks/accounting/README.md#remove_accounting_customer) - Remove a customer
* [remove_accounting_invoice](docs/sdks/accounting/README.md#remove_accounting_invoice) - Remove a invoice
* [remove_accounting_payment](docs/sdks/accounting/README.md#remove_accounting_payment) - Remove a payment
* [remove_accounting_transaction](docs/sdks/accounting/README.md#remove_accounting_transaction) - Remove a transaction
* [update_accounting_account](docs/sdks/accounting/README.md#update_accounting_account) - Update an account
* [update_accounting_customer](docs/sdks/accounting/README.md#update_accounting_customer) - Update a customer
* [update_accounting_invoice](docs/sdks/accounting/README.md#update_accounting_invoice) - Update a invoice
* [update_accounting_payment](docs/sdks/accounting/README.md#update_accounting_payment) - Update a payment
* [update_accounting_transaction](docs/sdks/accounting/README.md#update_accounting_transaction) - Update a transaction

### [Account](docs/sdks/account/README.md)

* [create_accounting_account](docs/sdks/account/README.md#create_accounting_account) - Create an account
* [get_accounting_account](docs/sdks/account/README.md#get_accounting_account) - Retrieve an account
* [list_accounting_accounts](docs/sdks/account/README.md#list_accounting_accounts) - List all accounts
* [patch_accounting_account](docs/sdks/account/README.md#patch_accounting_account) - Update an account
* [remove_accounting_account](docs/sdks/account/README.md#remove_accounting_account) - Remove an account
* [update_accounting_account](docs/sdks/account/README.md#update_accounting_account) - Update an account

### [Customer](docs/sdks/customer/README.md)

* [create_accounting_customer](docs/sdks/customer/README.md#create_accounting_customer) - Create a customer
* [create_ticketing_customer](docs/sdks/customer/README.md#create_ticketing_customer) - Create a customer
* [get_accounting_customer](docs/sdks/customer/README.md#get_accounting_customer) - Retrieve a customer
* [get_ticketing_customer](docs/sdks/customer/README.md#get_ticketing_customer) - Retrieve a customer
* [list_accounting_customers](docs/sdks/customer/README.md#list_accounting_customers) - List all customers
* [list_ticketing_customers](docs/sdks/customer/README.md#list_ticketing_customers) - List all customers
* [patch_accounting_customer](docs/sdks/customer/README.md#patch_accounting_customer) - Update a customer
* [patch_ticketing_customer](docs/sdks/customer/README.md#patch_ticketing_customer) - Update a customer
* [remove_accounting_customer](docs/sdks/customer/README.md#remove_accounting_customer) - Remove a customer
* [remove_ticketing_customer](docs/sdks/customer/README.md#remove_ticketing_customer) - Remove a customer
* [update_accounting_customer](docs/sdks/customer/README.md#update_accounting_customer) - Update a customer
* [update_ticketing_customer](docs/sdks/customer/README.md#update_ticketing_customer) - Update a customer

### [Invoice](docs/sdks/invoice/README.md)

* [create_accounting_invoice](docs/sdks/invoice/README.md#create_accounting_invoice) - Create a invoice
* [get_accounting_invoice](docs/sdks/invoice/README.md#get_accounting_invoice) - Retrieve a invoice
* [list_accounting_invoices](docs/sdks/invoice/README.md#list_accounting_invoices) - List all invoices
* [patch_accounting_invoice](docs/sdks/invoice/README.md#patch_accounting_invoice) - Update a invoice
* [remove_accounting_invoice](docs/sdks/invoice/README.md#remove_accounting_invoice) - Remove a invoice
* [update_accounting_invoice](docs/sdks/invoice/README.md#update_accounting_invoice) - Update a invoice

### [Payment](docs/sdks/payment/README.md)

* [create_accounting_payment](docs/sdks/payment/README.md#create_accounting_payment) - Create a payment
* [get_accounting_payment](docs/sdks/payment/README.md#get_accounting_payment) - Retrieve a payment
* [list_accounting_payments](docs/sdks/payment/README.md#list_accounting_payments) - List all payments
* [patch_accounting_payment](docs/sdks/payment/README.md#patch_accounting_payment) - Update a payment
* [remove_accounting_payment](docs/sdks/payment/README.md#remove_accounting_payment) - Remove a payment
* [update_accounting_payment](docs/sdks/payment/README.md#update_accounting_payment) - Update a payment

### [Transaction](docs/sdks/transaction/README.md)

* [create_accounting_transaction](docs/sdks/transaction/README.md#create_accounting_transaction) - Create a transaction
* [get_accounting_transaction](docs/sdks/transaction/README.md#get_accounting_transaction) - Retrieve a transaction
* [list_accounting_transactions](docs/sdks/transaction/README.md#list_accounting_transactions) - List all transactions
* [patch_accounting_transaction](docs/sdks/transaction/README.md#patch_accounting_transaction) - Update a transaction
* [remove_accounting_transaction](docs/sdks/transaction/README.md#remove_accounting_transaction) - Remove a transaction
* [update_accounting_transaction](docs/sdks/transaction/README.md#update_accounting_transaction) - Update a transaction

### [Ats](docs/sdks/ats/README.md)

* [create_ats_application](docs/sdks/ats/README.md#create_ats_application) - Create an application
* [create_ats_candidate](docs/sdks/ats/README.md#create_ats_candidate) - Create a candidate
* [create_ats_document](docs/sdks/ats/README.md#create_ats_document) - Create a document
* [create_ats_interview](docs/sdks/ats/README.md#create_ats_interview) - Create a interview
* [create_ats_job](docs/sdks/ats/README.md#create_ats_job) - Create a job
* [create_ats_scorecard](docs/sdks/ats/README.md#create_ats_scorecard) - Create a scorecard
* [get_ats_application](docs/sdks/ats/README.md#get_ats_application) - Retrieve an application
* [get_ats_candidate](docs/sdks/ats/README.md#get_ats_candidate) - Retrieve a candidate
* [get_ats_document](docs/sdks/ats/README.md#get_ats_document) - Retrieve a document
* [get_ats_interview](docs/sdks/ats/README.md#get_ats_interview) - Retrieve a interview
* [get_ats_job](docs/sdks/ats/README.md#get_ats_job) - Retrieve a job
* [get_ats_scorecard](docs/sdks/ats/README.md#get_ats_scorecard) - Retrieve a scorecard
* [list_ats_applications](docs/sdks/ats/README.md#list_ats_applications) - List all applications
* [list_ats_candidates](docs/sdks/ats/README.md#list_ats_candidates) - List all candidates
* [list_ats_documents](docs/sdks/ats/README.md#list_ats_documents) - List all documents
* [list_ats_interviews](docs/sdks/ats/README.md#list_ats_interviews) - List all interviews
* [list_ats_jobs](docs/sdks/ats/README.md#list_ats_jobs) - List all jobs
* [list_ats_scorecards](docs/sdks/ats/README.md#list_ats_scorecards) - List all scorecards
* [patch_ats_application](docs/sdks/ats/README.md#patch_ats_application) - Update an application
* [patch_ats_candidate](docs/sdks/ats/README.md#patch_ats_candidate) - Update a candidate
* [patch_ats_document](docs/sdks/ats/README.md#patch_ats_document) - Update a document
* [patch_ats_interview](docs/sdks/ats/README.md#patch_ats_interview) - Update a interview
* [patch_ats_job](docs/sdks/ats/README.md#patch_ats_job) - Update a job
* [patch_ats_scorecard](docs/sdks/ats/README.md#patch_ats_scorecard) - Update a scorecard
* [remove_ats_application](docs/sdks/ats/README.md#remove_ats_application) - Remove an application
* [remove_ats_candidate](docs/sdks/ats/README.md#remove_ats_candidate) - Remove a candidate
* [remove_ats_document](docs/sdks/ats/README.md#remove_ats_document) - Remove a document
* [remove_ats_interview](docs/sdks/ats/README.md#remove_ats_interview) - Remove a interview
* [remove_ats_job](docs/sdks/ats/README.md#remove_ats_job) - Remove a job
* [remove_ats_scorecard](docs/sdks/ats/README.md#remove_ats_scorecard) - Remove a scorecard
* [update_ats_application](docs/sdks/ats/README.md#update_ats_application) - Update an application
* [update_ats_candidate](docs/sdks/ats/README.md#update_ats_candidate) - Update a candidate
* [update_ats_document](docs/sdks/ats/README.md#update_ats_document) - Update a document
* [update_ats_interview](docs/sdks/ats/README.md#update_ats_interview) - Update a interview
* [update_ats_job](docs/sdks/ats/README.md#update_ats_job) - Update a job
* [update_ats_scorecard](docs/sdks/ats/README.md#update_ats_scorecard) - Update a scorecard

### [Application](docs/sdks/application/README.md)

* [create_ats_application](docs/sdks/application/README.md#create_ats_application) - Create an application
* [get_ats_application](docs/sdks/application/README.md#get_ats_application) - Retrieve an application
* [list_ats_applications](docs/sdks/application/README.md#list_ats_applications) - List all applications
* [patch_ats_application](docs/sdks/application/README.md#patch_ats_application) - Update an application
* [remove_ats_application](docs/sdks/application/README.md#remove_ats_application) - Remove an application
* [update_ats_application](docs/sdks/application/README.md#update_ats_application) - Update an application

### [Candidate](docs/sdks/candidate/README.md)

* [create_ats_candidate](docs/sdks/candidate/README.md#create_ats_candidate) - Create a candidate
* [get_ats_candidate](docs/sdks/candidate/README.md#get_ats_candidate) - Retrieve a candidate
* [list_ats_candidates](docs/sdks/candidate/README.md#list_ats_candidates) - List all candidates
* [patch_ats_candidate](docs/sdks/candidate/README.md#patch_ats_candidate) - Update a candidate
* [remove_ats_candidate](docs/sdks/candidate/README.md#remove_ats_candidate) - Remove a candidate
* [update_ats_candidate](docs/sdks/candidate/README.md#update_ats_candidate) - Update a candidate

### [Document](docs/sdks/document/README.md)

* [create_ats_document](docs/sdks/document/README.md#create_ats_document) - Create a document
* [get_ats_document](docs/sdks/document/README.md#get_ats_document) - Retrieve a document
* [list_ats_documents](docs/sdks/document/README.md#list_ats_documents) - List all documents
* [patch_ats_document](docs/sdks/document/README.md#patch_ats_document) - Update a document
* [remove_ats_document](docs/sdks/document/README.md#remove_ats_document) - Remove a document
* [update_ats_document](docs/sdks/document/README.md#update_ats_document) - Update a document

### [Interview](docs/sdks/interview/README.md)

* [create_ats_interview](docs/sdks/interview/README.md#create_ats_interview) - Create a interview
* [get_ats_interview](docs/sdks/interview/README.md#get_ats_interview) - Retrieve a interview
* [list_ats_interviews](docs/sdks/interview/README.md#list_ats_interviews) - List all interviews
* [patch_ats_interview](docs/sdks/interview/README.md#patch_ats_interview) - Update a interview
* [remove_ats_interview](docs/sdks/interview/README.md#remove_ats_interview) - Remove a interview
* [update_ats_interview](docs/sdks/interview/README.md#update_ats_interview) - Update a interview

### [Job](docs/sdks/job/README.md)

* [create_ats_job](docs/sdks/job/README.md#create_ats_job) - Create a job
* [get_ats_job](docs/sdks/job/README.md#get_ats_job) - Retrieve a job
* [list_ats_jobs](docs/sdks/job/README.md#list_ats_jobs) - List all jobs
* [patch_ats_job](docs/sdks/job/README.md#patch_ats_job) - Update a job
* [remove_ats_job](docs/sdks/job/README.md#remove_ats_job) - Remove a job
* [update_ats_job](docs/sdks/job/README.md#update_ats_job) - Update a job

### [Scorecard](docs/sdks/scorecard/README.md)

* [create_ats_scorecard](docs/sdks/scorecard/README.md#create_ats_scorecard) - Create a scorecard
* [get_ats_scorecard](docs/sdks/scorecard/README.md#get_ats_scorecard) - Retrieve a scorecard
* [list_ats_scorecards](docs/sdks/scorecard/README.md#list_ats_scorecards) - List all scorecards
* [patch_ats_scorecard](docs/sdks/scorecard/README.md#patch_ats_scorecard) - Update a scorecard
* [remove_ats_scorecard](docs/sdks/scorecard/README.md#remove_ats_scorecard) - Remove a scorecard
* [update_ats_scorecard](docs/sdks/scorecard/README.md#update_ats_scorecard) - Update a scorecard

### [Crm](docs/sdks/crm/README.md)

* [create_crm_company](docs/sdks/crm/README.md#create_crm_company) - Create a company
* [create_crm_contact](docs/sdks/crm/README.md#create_crm_contact) - Create a contact
* [create_crm_deal](docs/sdks/crm/README.md#create_crm_deal) - Create a deal
* [create_crm_event](docs/sdks/crm/README.md#create_crm_event) - Create a event
* [create_crm_file](docs/sdks/crm/README.md#create_crm_file) - Create a file
* [create_crm_lead](docs/sdks/crm/README.md#create_crm_lead) - Create a lead
* [create_crm_pipeline](docs/sdks/crm/README.md#create_crm_pipeline) - Create a pipeline
* [get_crm_company](docs/sdks/crm/README.md#get_crm_company) - Retrieve a company
* [get_crm_contact](docs/sdks/crm/README.md#get_crm_contact) - Retrieve a contact
* [get_crm_deal](docs/sdks/crm/README.md#get_crm_deal) - Retrieve a deal
* [get_crm_event](docs/sdks/crm/README.md#get_crm_event) - Retrieve a event
* [get_crm_file](docs/sdks/crm/README.md#get_crm_file) - Retrieve a file
* [get_crm_lead](docs/sdks/crm/README.md#get_crm_lead) - Retrieve a lead
* [get_crm_pipeline](docs/sdks/crm/README.md#get_crm_pipeline) - Retrieve a pipeline
* [list_crm_companies](docs/sdks/crm/README.md#list_crm_companies) - List all companies
* [list_crm_contacts](docs/sdks/crm/README.md#list_crm_contacts) - List all contacts
* [list_crm_deals](docs/sdks/crm/README.md#list_crm_deals) - List all deals
* [list_crm_events](docs/sdks/crm/README.md#list_crm_events) - List all events
* [list_crm_files](docs/sdks/crm/README.md#list_crm_files) - List all files
* [list_crm_leads](docs/sdks/crm/README.md#list_crm_leads) - List all leads
* [list_crm_pipelines](docs/sdks/crm/README.md#list_crm_pipelines) - List all pipelines
* [patch_crm_company](docs/sdks/crm/README.md#patch_crm_company) - Update a company
* [patch_crm_contact](docs/sdks/crm/README.md#patch_crm_contact) - Update a contact
* [patch_crm_deal](docs/sdks/crm/README.md#patch_crm_deal) - Update a deal
* [patch_crm_event](docs/sdks/crm/README.md#patch_crm_event) - Update a event
* [patch_crm_file](docs/sdks/crm/README.md#patch_crm_file) - Update a file
* [patch_crm_lead](docs/sdks/crm/README.md#patch_crm_lead) - Update a lead
* [patch_crm_pipeline](docs/sdks/crm/README.md#patch_crm_pipeline) - Update a pipeline
* [remove_crm_company](docs/sdks/crm/README.md#remove_crm_company) - Remove a company
* [remove_crm_contact](docs/sdks/crm/README.md#remove_crm_contact) - Remove a contact
* [remove_crm_deal](docs/sdks/crm/README.md#remove_crm_deal) - Remove a deal
* [remove_crm_event](docs/sdks/crm/README.md#remove_crm_event) - Remove a event
* [remove_crm_file](docs/sdks/crm/README.md#remove_crm_file) - Remove a file
* [remove_crm_lead](docs/sdks/crm/README.md#remove_crm_lead) - Remove a lead
* [remove_crm_pipeline](docs/sdks/crm/README.md#remove_crm_pipeline) - Remove a pipeline
* [update_crm_company](docs/sdks/crm/README.md#update_crm_company) - Update a company
* [update_crm_contact](docs/sdks/crm/README.md#update_crm_contact) - Update a contact
* [update_crm_deal](docs/sdks/crm/README.md#update_crm_deal) - Update a deal
* [update_crm_event](docs/sdks/crm/README.md#update_crm_event) - Update a event
* [update_crm_file](docs/sdks/crm/README.md#update_crm_file) - Update a file
* [update_crm_lead](docs/sdks/crm/README.md#update_crm_lead) - Update a lead
* [update_crm_pipeline](docs/sdks/crm/README.md#update_crm_pipeline) - Update a pipeline

### [Company](docs/sdks/company/README.md)

* [create_crm_company](docs/sdks/company/README.md#create_crm_company) - Create a company
* [get_crm_company](docs/sdks/company/README.md#get_crm_company) - Retrieve a company
* [list_crm_companies](docs/sdks/company/README.md#list_crm_companies) - List all companies
* [list_enrich_companies](docs/sdks/company/README.md#list_enrich_companies) - Retrieve enrichment information for a company
* [patch_crm_company](docs/sdks/company/README.md#patch_crm_company) - Update a company
* [remove_crm_company](docs/sdks/company/README.md#remove_crm_company) - Remove a company
* [update_crm_company](docs/sdks/company/README.md#update_crm_company) - Update a company

### [Contact](docs/sdks/contact/README.md)

* [create_crm_contact](docs/sdks/contact/README.md#create_crm_contact) - Create a contact
* [create_uc_contact](docs/sdks/contact/README.md#create_uc_contact) - Create a contact
* [get_crm_contact](docs/sdks/contact/README.md#get_crm_contact) - Retrieve a contact
* [get_uc_contact](docs/sdks/contact/README.md#get_uc_contact) - Retrieve a contact
* [list_crm_contacts](docs/sdks/contact/README.md#list_crm_contacts) - List all contacts
* [list_uc_contacts](docs/sdks/contact/README.md#list_uc_contacts) - List all contacts
* [patch_crm_contact](docs/sdks/contact/README.md#patch_crm_contact) - Update a contact
* [patch_uc_contact](docs/sdks/contact/README.md#patch_uc_contact) - Update a contact
* [remove_crm_contact](docs/sdks/contact/README.md#remove_crm_contact) - Remove a contact
* [remove_uc_contact](docs/sdks/contact/README.md#remove_uc_contact) - Remove a contact
* [update_crm_contact](docs/sdks/contact/README.md#update_crm_contact) - Update a contact
* [update_uc_contact](docs/sdks/contact/README.md#update_uc_contact) - Update a contact

### [Deal](docs/sdks/deal/README.md)

* [create_crm_deal](docs/sdks/deal/README.md#create_crm_deal) - Create a deal
* [get_crm_deal](docs/sdks/deal/README.md#get_crm_deal) - Retrieve a deal
* [list_crm_deals](docs/sdks/deal/README.md#list_crm_deals) - List all deals
* [patch_crm_deal](docs/sdks/deal/README.md#patch_crm_deal) - Update a deal
* [remove_crm_deal](docs/sdks/deal/README.md#remove_crm_deal) - Remove a deal
* [update_crm_deal](docs/sdks/deal/README.md#update_crm_deal) - Update a deal

### [Event](docs/sdks/event/README.md)

* [create_crm_event](docs/sdks/event/README.md#create_crm_event) - Create a event
* [get_crm_event](docs/sdks/event/README.md#get_crm_event) - Retrieve a event
* [list_crm_events](docs/sdks/event/README.md#list_crm_events) - List all events
* [patch_crm_event](docs/sdks/event/README.md#patch_crm_event) - Update a event
* [remove_crm_event](docs/sdks/event/README.md#remove_crm_event) - Remove a event
* [update_crm_event](docs/sdks/event/README.md#update_crm_event) - Update a event

### [File](docs/sdks/file/README.md)

* [create_crm_file](docs/sdks/file/README.md#create_crm_file) - Create a file
* [get_crm_file](docs/sdks/file/README.md#get_crm_file) - Retrieve a file
* [list_crm_files](docs/sdks/file/README.md#list_crm_files) - List all files
* [patch_crm_file](docs/sdks/file/README.md#patch_crm_file) - Update a file
* [remove_crm_file](docs/sdks/file/README.md#remove_crm_file) - Remove a file
* [update_crm_file](docs/sdks/file/README.md#update_crm_file) - Update a file

### [Lead](docs/sdks/lead/README.md)

* [create_crm_lead](docs/sdks/lead/README.md#create_crm_lead) - Create a lead
* [get_crm_lead](docs/sdks/lead/README.md#get_crm_lead) - Retrieve a lead
* [list_crm_leads](docs/sdks/lead/README.md#list_crm_leads) - List all leads
* [patch_crm_lead](docs/sdks/lead/README.md#patch_crm_lead) - Update a lead
* [remove_crm_lead](docs/sdks/lead/README.md#remove_crm_lead) - Remove a lead
* [update_crm_lead](docs/sdks/lead/README.md#update_crm_lead) - Update a lead

### [Pipeline](docs/sdks/pipeline/README.md)

* [create_crm_pipeline](docs/sdks/pipeline/README.md#create_crm_pipeline) - Create a pipeline
* [get_crm_pipeline](docs/sdks/pipeline/README.md#get_crm_pipeline) - Retrieve a pipeline
* [list_crm_pipelines](docs/sdks/pipeline/README.md#list_crm_pipelines) - List all pipelines
* [patch_crm_pipeline](docs/sdks/pipeline/README.md#patch_crm_pipeline) - Update a pipeline
* [remove_crm_pipeline](docs/sdks/pipeline/README.md#remove_crm_pipeline) - Remove a pipeline
* [update_crm_pipeline](docs/sdks/pipeline/README.md#update_crm_pipeline) - Update a pipeline

### [Enrich](docs/sdks/enrich/README.md)

* [list_enrich_companies](docs/sdks/enrich/README.md#list_enrich_companies) - Retrieve enrichment information for a company
* [list_enrich_people](docs/sdks/enrich/README.md#list_enrich_people) - Retrieve enrichment information for a person

### [Person](docs/sdks/person/README.md)

* [list_enrich_people](docs/sdks/person/README.md#list_enrich_people) - Retrieve enrichment information for a person

### [Hris](docs/sdks/hris/README.md)

* [create_hris_employee](docs/sdks/hris/README.md#create_hris_employee) - Create an employee
* [create_hris_group](docs/sdks/hris/README.md#create_hris_group) - Create a group
* [get_hris_employee](docs/sdks/hris/README.md#get_hris_employee) - Retrieve an employee
* [get_hris_group](docs/sdks/hris/README.md#get_hris_group) - Retrieve a group
* [list_hris_employees](docs/sdks/hris/README.md#list_hris_employees) - List all employees
* [list_hris_groups](docs/sdks/hris/README.md#list_hris_groups) - List all groups
* [patch_hris_employee](docs/sdks/hris/README.md#patch_hris_employee) - Update an employee
* [patch_hris_group](docs/sdks/hris/README.md#patch_hris_group) - Update a group
* [remove_hris_employee](docs/sdks/hris/README.md#remove_hris_employee) - Remove an employee
* [remove_hris_group](docs/sdks/hris/README.md#remove_hris_group) - Remove a group
* [update_hris_employee](docs/sdks/hris/README.md#update_hris_employee) - Update an employee
* [update_hris_group](docs/sdks/hris/README.md#update_hris_group) - Update a group

### [Employee](docs/sdks/employee/README.md)

* [create_hris_employee](docs/sdks/employee/README.md#create_hris_employee) - Create an employee
* [get_hris_employee](docs/sdks/employee/README.md#get_hris_employee) - Retrieve an employee
* [list_hris_employees](docs/sdks/employee/README.md#list_hris_employees) - List all employees
* [patch_hris_employee](docs/sdks/employee/README.md#patch_hris_employee) - Update an employee
* [remove_hris_employee](docs/sdks/employee/README.md#remove_hris_employee) - Remove an employee
* [update_hris_employee](docs/sdks/employee/README.md#update_hris_employee) - Update an employee

### [Group](docs/sdks/group/README.md)

* [create_hris_group](docs/sdks/group/README.md#create_hris_group) - Create a group
* [get_hris_group](docs/sdks/group/README.md#get_hris_group) - Retrieve a group
* [list_hris_groups](docs/sdks/group/README.md#list_hris_groups) - List all groups
* [patch_hris_group](docs/sdks/group/README.md#patch_hris_group) - Update a group
* [remove_hris_group](docs/sdks/group/README.md#remove_hris_group) - Remove a group
* [update_hris_group](docs/sdks/group/README.md#update_hris_group) - Update a group

### [Martech](docs/sdks/martech/README.md)

* [create_martech_list](docs/sdks/martech/README.md#create_martech_list) - Create a list
* [create_martech_member](docs/sdks/martech/README.md#create_martech_member) - Create a member
* [get_martech_list](docs/sdks/martech/README.md#get_martech_list) - Retrieve a list
* [get_martech_member](docs/sdks/martech/README.md#get_martech_member) - Retrieve a member
* [list_martech_lists](docs/sdks/martech/README.md#list_martech_lists) - List all lists
* [list_martech_members](docs/sdks/martech/README.md#list_martech_members) - List all members
* [patch_martech_list](docs/sdks/martech/README.md#patch_martech_list) - Update a list
* [patch_martech_member](docs/sdks/martech/README.md#patch_martech_member) - Update a member
* [remove_martech_list](docs/sdks/martech/README.md#remove_martech_list) - Remove a list
* [remove_martech_member](docs/sdks/martech/README.md#remove_martech_member) - Remove member
* [update_martech_list](docs/sdks/martech/README.md#update_martech_list) - Update a list
* [update_martech_member](docs/sdks/martech/README.md#update_martech_member) - Update a member

### [List](docs/sdks/list/README.md)

* [create_martech_list](docs/sdks/list/README.md#create_martech_list) - Create a list
* [get_martech_list](docs/sdks/list/README.md#get_martech_list) - Retrieve a list
* [list_martech_lists](docs/sdks/list/README.md#list_martech_lists) - List all lists
* [patch_martech_list](docs/sdks/list/README.md#patch_martech_list) - Update a list
* [remove_martech_list](docs/sdks/list/README.md#remove_martech_list) - Remove a list
* [update_martech_list](docs/sdks/list/README.md#update_martech_list) - Update a list

### [Member](docs/sdks/member/README.md)

* [create_martech_member](docs/sdks/member/README.md#create_martech_member) - Create a member
* [get_martech_member](docs/sdks/member/README.md#get_martech_member) - Retrieve a member
* [list_martech_members](docs/sdks/member/README.md#list_martech_members) - List all members
* [patch_martech_member](docs/sdks/member/README.md#patch_martech_member) - Update a member
* [remove_martech_member](docs/sdks/member/README.md#remove_martech_member) - Remove member
* [update_martech_member](docs/sdks/member/README.md#update_martech_member) - Update a member

### [Passthrough](docs/sdks/passthrough/README.md)

* [create_passthrough](docs/sdks/passthrough/README.md#create_passthrough) - Passthrough POST
* [list_passthroughs](docs/sdks/passthrough/README.md#list_passthroughs) - Passthrough GET
* [patch_passthrough](docs/sdks/passthrough/README.md#patch_passthrough) - Passthrough PUT
* [remove_passthrough](docs/sdks/passthrough/README.md#remove_passthrough) - Passthrough DELETE
* [update_passthrough](docs/sdks/passthrough/README.md#update_passthrough) - Passthrough PUT

### [Ticketing](docs/sdks/ticketing/README.md)

* [create_ticketing_customer](docs/sdks/ticketing/README.md#create_ticketing_customer) - Create a customer
* [create_ticketing_note](docs/sdks/ticketing/README.md#create_ticketing_note) - Create a note
* [create_ticketing_ticket](docs/sdks/ticketing/README.md#create_ticketing_ticket) - Create a ticket
* [get_ticketing_customer](docs/sdks/ticketing/README.md#get_ticketing_customer) - Retrieve a customer
* [get_ticketing_note](docs/sdks/ticketing/README.md#get_ticketing_note) - Retrieve a note
* [get_ticketing_ticket](docs/sdks/ticketing/README.md#get_ticketing_ticket) - Retrieve a ticket
* [list_ticketing_customers](docs/sdks/ticketing/README.md#list_ticketing_customers) - List all customers
* [list_ticketing_notes](docs/sdks/ticketing/README.md#list_ticketing_notes) - List all notes
* [list_ticketing_tickets](docs/sdks/ticketing/README.md#list_ticketing_tickets) - List all tickets
* [patch_ticketing_customer](docs/sdks/ticketing/README.md#patch_ticketing_customer) - Update a customer
* [patch_ticketing_note](docs/sdks/ticketing/README.md#patch_ticketing_note) - Update a note
* [patch_ticketing_ticket](docs/sdks/ticketing/README.md#patch_ticketing_ticket) - Update a ticket
* [remove_ticketing_customer](docs/sdks/ticketing/README.md#remove_ticketing_customer) - Remove a customer
* [remove_ticketing_note](docs/sdks/ticketing/README.md#remove_ticketing_note) - Remove a note
* [remove_ticketing_ticket](docs/sdks/ticketing/README.md#remove_ticketing_ticket) - Remove a ticket
* [update_ticketing_customer](docs/sdks/ticketing/README.md#update_ticketing_customer) - Update a customer
* [update_ticketing_note](docs/sdks/ticketing/README.md#update_ticketing_note) - Update a note
* [update_ticketing_ticket](docs/sdks/ticketing/README.md#update_ticketing_ticket) - Update a ticket

### [Note](docs/sdks/note/README.md)

* [create_ticketing_note](docs/sdks/note/README.md#create_ticketing_note) - Create a note
* [get_ticketing_note](docs/sdks/note/README.md#get_ticketing_note) - Retrieve a note
* [list_ticketing_notes](docs/sdks/note/README.md#list_ticketing_notes) - List all notes
* [patch_ticketing_note](docs/sdks/note/README.md#patch_ticketing_note) - Update a note
* [remove_ticketing_note](docs/sdks/note/README.md#remove_ticketing_note) - Remove a note
* [update_ticketing_note](docs/sdks/note/README.md#update_ticketing_note) - Update a note

### [Ticket](docs/sdks/ticket/README.md)

* [create_ticketing_ticket](docs/sdks/ticket/README.md#create_ticketing_ticket) - Create a ticket
* [get_ticketing_ticket](docs/sdks/ticket/README.md#get_ticketing_ticket) - Retrieve a ticket
* [list_ticketing_tickets](docs/sdks/ticket/README.md#list_ticketing_tickets) - List all tickets
* [patch_ticketing_ticket](docs/sdks/ticket/README.md#patch_ticketing_ticket) - Update a ticket
* [remove_ticketing_ticket](docs/sdks/ticket/README.md#remove_ticketing_ticket) - Remove a ticket
* [update_ticketing_ticket](docs/sdks/ticket/README.md#update_ticketing_ticket) - Update a ticket

### [Uc](docs/sdks/uc/README.md)

* [create_uc_contact](docs/sdks/uc/README.md#create_uc_contact) - Create a contact
* [get_uc_contact](docs/sdks/uc/README.md#get_uc_contact) - Retrieve a contact
* [list_uc_calls](docs/sdks/uc/README.md#list_uc_calls) - List all calls
* [list_uc_contacts](docs/sdks/uc/README.md#list_uc_contacts) - List all contacts
* [patch_uc_contact](docs/sdks/uc/README.md#patch_uc_contact) - Update a contact
* [remove_uc_contact](docs/sdks/uc/README.md#remove_uc_contact) - Remove a contact
* [update_uc_contact](docs/sdks/uc/README.md#update_uc_contact) - Update a contact

### [Call](docs/sdks/call/README.md)

* [list_uc_calls](docs/sdks/call/README.md#list_uc_calls) - List all calls

### [Unified](docs/sdks/unified/README.md)

* [create_unified_connection](docs/sdks/unified/README.md#create_unified_connection) - Create connection
* [create_unified_webhook](docs/sdks/unified/README.md#create_unified_webhook) - Create webhook subscription
* [get_unified_apicall](docs/sdks/unified/README.md#get_unified_apicall) - Retrieve specific API Call by its ID
* [get_unified_connection](docs/sdks/unified/README.md#get_unified_connection) - Retrieve connection
* [get_unified_integration](docs/sdks/unified/README.md#get_unified_integration) - Retrieve an integration
* [get_unified_integration_auth](docs/sdks/unified/README.md#get_unified_integration_auth) - Create connection indirectly
* [get_unified_webhook](docs/sdks/unified/README.md#get_unified_webhook) - Retrieve webhook by its ID
* [list_unified_apicalls](docs/sdks/unified/README.md#list_unified_apicalls) - Returns API Calls
* [list_unified_connections](docs/sdks/unified/README.md#list_unified_connections) - List all connections
* [list_unified_integration_workspaces](docs/sdks/unified/README.md#list_unified_integration_workspaces) - Returns all activated integrations in a workspace
* [list_unified_integrations](docs/sdks/unified/README.md#list_unified_integrations) - Returns all integrations
* [list_unified_webhooks](docs/sdks/unified/README.md#list_unified_webhooks) - Returns all registered webhooks
* [patch_unified_connection](docs/sdks/unified/README.md#patch_unified_connection) - Update connection
* [remove_unified_connection](docs/sdks/unified/README.md#remove_unified_connection) - Remove connection
* [remove_unified_webhook](docs/sdks/unified/README.md#remove_unified_webhook) - Remove webhook subscription
* [update_unified_connection](docs/sdks/unified/README.md#update_unified_connection) - Update connection

### [Apicall](docs/sdks/apicall/README.md)

* [get_unified_apicall](docs/sdks/apicall/README.md#get_unified_apicall) - Retrieve specific API Call by its ID
* [list_unified_apicalls](docs/sdks/apicall/README.md#list_unified_apicalls) - Returns API Calls

### [Connection](docs/sdks/connection/README.md)

* [create_unified_connection](docs/sdks/connection/README.md#create_unified_connection) - Create connection
* [get_unified_connection](docs/sdks/connection/README.md#get_unified_connection) - Retrieve connection
* [list_unified_connections](docs/sdks/connection/README.md#list_unified_connections) - List all connections
* [patch_unified_connection](docs/sdks/connection/README.md#patch_unified_connection) - Update connection
* [remove_unified_connection](docs/sdks/connection/README.md#remove_unified_connection) - Remove connection
* [update_unified_connection](docs/sdks/connection/README.md#update_unified_connection) - Update connection

### [Integration](docs/sdks/integration/README.md)

* [get_unified_integration](docs/sdks/integration/README.md#get_unified_integration) - Retrieve an integration
* [get_unified_integration_auth](docs/sdks/integration/README.md#get_unified_integration_auth) - Create connection indirectly
* [list_unified_integration_workspaces](docs/sdks/integration/README.md#list_unified_integration_workspaces) - Returns all activated integrations in a workspace
* [list_unified_integrations](docs/sdks/integration/README.md#list_unified_integrations) - Returns all integrations

### [Auth](docs/sdks/auth/README.md)

* [get_unified_integration_auth](docs/sdks/auth/README.md#get_unified_integration_auth) - Create connection indirectly
* [get_unified_integration_login](docs/sdks/auth/README.md#get_unified_integration_login) - Sign in a user

### [Login](docs/sdks/login/README.md)

* [get_unified_integration_login](docs/sdks/login/README.md#get_unified_integration_login) - Sign in a user

### [Webhook](docs/sdks/webhook/README.md)

* [create_unified_webhook](docs/sdks/webhook/README.md#create_unified_webhook) - Create webhook subscription
* [get_unified_webhook](docs/sdks/webhook/README.md#get_unified_webhook) - Retrieve webhook by its ID
* [list_unified_webhooks](docs/sdks/webhook/README.md#list_unified_webhooks) - Returns all registered webhooks
* [remove_unified_webhook](docs/sdks/webhook/README.md#remove_unified_webhook) - Remove webhook subscription
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

## Server Selection

### Select Server by Index

You can override the default server globally by passing a server index to the `server_idx: int` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the indexes associated with the available servers:

| # | Server | Variables |
| - | ------ | --------- |
| 0 | `https://api.unified.to` | None |
| 1 | `https://api-eu.unified.to` | None |




### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url: str` optional parameter when initializing the SDK client instance. For example:
<!-- End Server Selection [server] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->



### Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

### Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a Github issue as a proof of concept and we'll do our best to include it in a future release !

### SDK Created by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
