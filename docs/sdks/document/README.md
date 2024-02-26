# Document


### Available Operations

* [create_ats_document](#create_ats_document) - Create a document
* [get_ats_document](#get_ats_document) - Retrieve a document
* [list_ats_documents](#list_ats_documents) - List all documents
* [patch_ats_document](#patch_ats_document) - Update a document
* [remove_ats_document](#remove_ats_document) - Remove a document
* [update_ats_document](#update_ats_document) - Update a document

## create_ats_document

Create a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.document.create_ats_document(::UnifiedRubySDK::Operations::CreateAtsDocumentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", ats_document=::UnifiedRubySDK::Shared::AtsDocument.new())

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::CreateAtsDocumentSecurity](../../models/operations/createatsdocumentsecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `ats_document`                                                                                                  | [::UnifiedRubySDK::Shared::AtsDocument](../../models/shared/atsdocument.md)                                     | :heavy_minus_sign:                                                                                              | N/A                                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsDocumentResponse)](../../models/operations/createatsdocumentresponse.md)**


## get_ats_document

Retrieve a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.document.get_ats_document(::UnifiedRubySDK::Operations::GetAtsDocumentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                | [::UnifiedRubySDK::Operations::GetAtsDocumentSecurity](../../models/operations/getatsdocumentsecurity.md) | :heavy_check_mark:                                                                                        | The security requirements to use for the request.                                                         |
| `connection_id`                                                                                           | *::String*                                                                                                | :heavy_check_mark:                                                                                        | ID of the connection                                                                                      |
| `id`                                                                                                      | *::String*                                                                                                | :heavy_check_mark:                                                                                        | ID of the Document                                                                                        |
| `fields_`                                                                                                 | T::Array<*::String*>                                                                                      | :heavy_minus_sign:                                                                                        | Comma-delimited fields to return                                                                          |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsDocumentResponse)](../../models/operations/getatsdocumentresponse.md)**


## list_ats_documents

List all documents

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAtsDocumentsRequest.new(
  connection_id: "<value>",
)
    
res = s.document.list_ats_documents(req, ::UnifiedRubySDK::Operations::ListAtsDocumentsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.ats_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListAtsDocumentsRequest](../../models/operations/listatsdocumentsrequest.md)   | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |
| `security`                                                                                                    | [::UnifiedRubySDK::Operations::ListAtsDocumentsSecurity](../../models/operations/listatsdocumentssecurity.md) | :heavy_check_mark:                                                                                            | The security requirements to use for the request.                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsDocumentsResponse)](../../models/operations/listatsdocumentsresponse.md)**


## patch_ats_document

Update a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.document.patch_ats_document(::UnifiedRubySDK::Operations::PatchAtsDocumentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ats_document=::UnifiedRubySDK::Shared::AtsDocument.new())

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                    | [::UnifiedRubySDK::Operations::PatchAtsDocumentSecurity](../../models/operations/patchatsdocumentsecurity.md) | :heavy_check_mark:                                                                                            | The security requirements to use for the request.                                                             |
| `connection_id`                                                                                               | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | ID of the connection                                                                                          |
| `id`                                                                                                          | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | ID of the Document                                                                                            |
| `ats_document`                                                                                                | [::UnifiedRubySDK::Shared::AtsDocument](../../models/shared/atsdocument.md)                                   | :heavy_minus_sign:                                                                                            | N/A                                                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsDocumentResponse)](../../models/operations/patchatsdocumentresponse.md)**


## remove_ats_document

Remove a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.document.remove_ats_document(::UnifiedRubySDK::Operations::RemoveAtsDocumentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::RemoveAtsDocumentSecurity](../../models/operations/removeatsdocumentsecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Document                                                                                              |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsDocumentResponse)](../../models/operations/removeatsdocumentresponse.md)**


## update_ats_document

Update a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.document.update_ats_document(::UnifiedRubySDK::Operations::UpdateAtsDocumentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ats_document=::UnifiedRubySDK::Shared::AtsDocument.new())

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::UpdateAtsDocumentSecurity](../../models/operations/updateatsdocumentsecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Document                                                                                              |
| `ats_document`                                                                                                  | [::UnifiedRubySDK::Shared::AtsDocument](../../models/shared/atsdocument.md)                                     | :heavy_minus_sign:                                                                                              | N/A                                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsDocumentResponse)](../../models/operations/updateatsdocumentresponse.md)**

