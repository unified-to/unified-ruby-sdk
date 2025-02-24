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

Create a journal

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.journal.create_accounting_journal(accounting_journal=::UnifiedRubySDK::Shared::AccountingJournal.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_journal`                                                                    | [::UnifiedRubySDK::Shared::AccountingJournal](../../models/shared/accountingjournal.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingJournalResponse)](../../models/operations/createaccountingjournalresponse.md)**



## get_accounting_journal

Retrieve a journal

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.journal.get_accounting_journal(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Journal                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingJournalResponse)](../../models/operations/getaccountingjournalresponse.md)**



## list_accounting_journals

List all journals

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAccountingJournalsRequest.new(
  connection_id: "<id>",
)
    
res = s.journal.list_accounting_journals(req)

if ! res.accounting_journals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingJournalsRequest](../../models/operations/listaccountingjournalsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingJournalsResponse)](../../models/operations/listaccountingjournalsresponse.md)**



## patch_accounting_journal

Update a journal

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.journal.patch_accounting_journal(accounting_journal=::UnifiedRubySDK::Shared::AccountingJournal.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_journal`                                                                    | [::UnifiedRubySDK::Shared::AccountingJournal](../../models/shared/accountingjournal.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Journal                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingJournalResponse)](../../models/operations/patchaccountingjournalresponse.md)**



## remove_accounting_journal

Remove a journal

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.journal.remove_accounting_journal(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingJournalResponse)](../../models/operations/removeaccountingjournalresponse.md)**



## update_accounting_journal

Update a journal

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.journal.update_accounting_journal(accounting_journal=::UnifiedRubySDK::Shared::AccountingJournal.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_journal`                                                                    | [::UnifiedRubySDK::Shared::AccountingJournal](../../models/shared/accountingjournal.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Journal                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingJournalResponse)](../../models/operations/updateaccountingjournalresponse.md)**

