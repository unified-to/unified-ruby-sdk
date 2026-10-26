# Journal
(*journal*)

## Overview

### Available Operations

* [create_accounting_journal](#create_accounting_journal) - Create a journal
* [get_accounting_journal](#get_accounting_journal) - Retrieve a journal
* [list_accounting_journals](#list_accounting_journals) - List all journals
* [patch_accounting_journal](#patch_accounting_journal) - Update a journal
* [remove_accounting_journal](#remove_accounting_journal) - Remove a journal
* [update_accounting_journal](#update_accounting_journal) - Update a journal

## create_accounting_journal

Creates a AccountingJournal. Provide the unified AccountingJournal fields in the request body; they are mapped to the provider's API. Returns the created AccountingJournal.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingJournal" method="post" path="/accounting/{connection_id}/journal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.journal.create_accounting_journal(accounting_journal: Models::Shared::AccountingJournal.new(
  attachments: [],
  category_ids: [],
  created_at: DateTime.iso8601('2020-02-20T15:14:55.881Z'),
  currency: 'CAD',
  description: 'Cilicium minima calco constans adipisci.',
  id: '736c1fcc-4d90-4f37-9880-c3d0064e08ff',
  is_inclusive_of_tax: true,
  lineitems: [],
  metadata: [],
  posted_at: DateTime.iso8601('2023-11-09T03:05:24.151Z'),
  reference: 'JE-78884',
  source: 'crustulum',
  status: Models::Shared::AccountingJournalStatus::VOID,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2022-01-12T04:31:35.255Z'),
), connection_id: '<id>')

unless res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_journal`                                                                                                                             | [Models::Shared::AccountingJournal](../../models/shared/accountingjournal.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingJournalQueryParamFields](../../models/operations/createaccountingjournalqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingJournalResponse)](../../models/operations/createaccountingjournalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_journal

Retrieves a single AccountingJournal by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingJournal" method="get" path="/accounting/{connection_id}/journal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.journal.get_accounting_journal(connection_id: '<id>', id: '<id>')

unless res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Journal                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingJournalQueryParamFields](../../models/operations/getaccountingjournalqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingJournalResponse)](../../models/operations/getaccountingjournalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_journals

Returns a list of AccountingJournals. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingJournals" method="get" path="/accounting/{connection_id}/journal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingJournalsRequest.new(
  connection_id: '<id>',
)

res = s.journal.list_accounting_journals(request: req)

unless res.accounting_journals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingJournalsRequest](../../models/operations/listaccountingjournalsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingJournalsResponse)](../../models/operations/listaccountingjournalsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_journal

Updates the AccountingJournal identified by `id`. Provide the unified AccountingJournal fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingJournal" method="patch" path="/accounting/{connection_id}/journal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingJournalRequest.new(
  accounting_journal: Models::Shared::AccountingJournal.new(
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-02-20T15:14:55.881Z'),
    currency: 'CAD',
    description: 'Cilicium minima calco constans adipisci.',
    id: '509c3975-73bb-4eee-a71f-4f372f5cca80',
    is_inclusive_of_tax: true,
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2023-11-09T03:05:24.161Z'),
    reference: 'JE-78884',
    source: 'crustulum',
    status: Models::Shared::AccountingJournalStatus::VOID,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2022-01-12T04:31:35.261Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.journal.patch_accounting_journal(request: req)

unless res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingJournalRequest](../../models/operations/patchaccountingjournalrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingJournalResponse)](../../models/operations/patchaccountingjournalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_journal

Deletes the AccountingJournal identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingJournal" method="delete" path="/accounting/{connection_id}/journal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.journal.remove_accounting_journal(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Journal    |

### Response

**[T.nilable(Models::Operations::RemoveAccountingJournalResponse)](../../models/operations/removeaccountingjournalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_journal

Updates the AccountingJournal identified by `id`. Provide the unified AccountingJournal fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingJournal" method="put" path="/accounting/{connection_id}/journal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingJournalRequest.new(
  accounting_journal: Models::Shared::AccountingJournal.new(
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-02-20T15:14:55.881Z'),
    currency: 'CAD',
    description: 'Cilicium minima calco constans adipisci.',
    id: '509c3975-73bb-4eee-a71f-4f372f5cca80',
    is_inclusive_of_tax: true,
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2023-11-09T03:05:24.161Z'),
    reference: 'JE-78884',
    source: 'crustulum',
    status: Models::Shared::AccountingJournalStatus::VOID,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2022-01-12T04:31:35.261Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.journal.update_accounting_journal(request: req)

unless res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingJournalRequest](../../models/operations/updateaccountingjournalrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingJournalResponse)](../../models/operations/updateaccountingjournalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |