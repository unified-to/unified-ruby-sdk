# Uc
(*uc*)

## Overview

### Available Operations

* [create_uc_contact](#create_uc_contact) - Create a contact
* [get_uc_contact](#get_uc_contact) - Retrieve a contact
* [list_uc_calls](#list_uc_calls) - List all calls
* [list_uc_contacts](#list_uc_contacts) - List all contacts
* [patch_uc_contact](#patch_uc_contact) - Update a contact
* [remove_uc_contact](#remove_uc_contact) - Remove a contact
* [update_uc_contact](#update_uc_contact) - Update a contact

## create_uc_contact

Create a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.uc.create_uc_contact(uc_contact=Models::Shared::UcContact.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `uc_contact`                                                            | [Models::Shared::UcContact](../../models/shared/uccontact.md)           | :heavy_check_mark:                                                      | A contact represents a person that optionally is associated with a call |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `fields_`                                                               | T::Array<*::String*>                                                    | :heavy_minus_sign:                                                      | Comma-delimited fields to return                                        |

### Response

**[T.nilable(Models::Operations::CreateUcContactResponse)](../../models/operations/createuccontactresponse.md)**



## get_uc_contact

Retrieve a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.uc.get_uc_contact(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Contact                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetUcContactResponse)](../../models/operations/getuccontactresponse.md)**



## list_uc_calls

List all calls

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListUcCallsRequest.new(
  connection_id: "<id>",
)

res = s.uc.list_uc_calls(req)

if ! res.uc_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::ListUcCallsRequest](../../models/operations/listuccallsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::ListUcCallsResponse)](../../models/operations/listuccallsresponse.md)**



## list_uc_contacts

List all contacts

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListUcContactsRequest.new(
  connection_id: "<id>",
)

res = s.uc.list_uc_contacts(req)

if ! res.uc_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListUcContactsRequest](../../models/operations/listuccontactsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListUcContactsResponse)](../../models/operations/listuccontactsresponse.md)**



## patch_uc_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.uc.patch_uc_contact(uc_contact=Models::Shared::UcContact.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `uc_contact`                                                            | [Models::Shared::UcContact](../../models/shared/uccontact.md)           | :heavy_check_mark:                                                      | A contact represents a person that optionally is associated with a call |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Contact                                                       |
| `fields_`                                                               | T::Array<*::String*>                                                    | :heavy_minus_sign:                                                      | Comma-delimited fields to return                                        |

### Response

**[T.nilable(Models::Operations::PatchUcContactResponse)](../../models/operations/patchuccontactresponse.md)**



## remove_uc_contact

Remove a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.uc.remove_uc_contact(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Contact    |

### Response

**[T.nilable(Models::Operations::RemoveUcContactResponse)](../../models/operations/removeuccontactresponse.md)**



## update_uc_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.uc.update_uc_contact(uc_contact=Models::Shared::UcContact.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `uc_contact`                                                            | [Models::Shared::UcContact](../../models/shared/uccontact.md)           | :heavy_check_mark:                                                      | A contact represents a person that optionally is associated with a call |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Contact                                                       |
| `fields_`                                                               | T::Array<*::String*>                                                    | :heavy_minus_sign:                                                      | Comma-delimited fields to return                                        |

### Response

**[T.nilable(Models::Operations::UpdateUcContactResponse)](../../models/operations/updateuccontactresponse.md)**

