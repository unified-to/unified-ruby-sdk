# Document

## Overview

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
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.document.create_ats_document(connection_id="<id>", ats_document=::UnifiedRubySDK::Shared::AtsDocument.new(), fields_=[
  "<value>",
])

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `ats_document`                                                              | [::UnifiedRubySDK::Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                                          | N/A                                                                         |
| `fields_`                                                                   | T::Array<*::String*>                                                        | :heavy_minus_sign:                                                          | Comma-delimited fields to return                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsDocumentResponse)](../../models/operations/createatsdocumentresponse.md)**



## get_ats_document

Retrieve a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.document.get_ats_document(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Document               |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsDocumentResponse)](../../models/operations/getatsdocumentresponse.md)**



## list_ats_documents

List all documents

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsDocumentsRequest.new(
  connection_id: "<id>",
)
    
res = s.document.list_ats_documents(req)

if ! res.ats_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListAtsDocumentsRequest](../../models/operations/listatsdocumentsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsDocumentsResponse)](../../models/operations/listatsdocumentsresponse.md)**



## patch_ats_document

Update a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.document.patch_ats_document(connection_id="<id>", id="<id>", ats_document=::UnifiedRubySDK::Shared::AtsDocument.new(), fields_=[
  "<value>",
])

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Document                                                          |
| `ats_document`                                                              | [::UnifiedRubySDK::Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                                          | N/A                                                                         |
| `fields_`                                                                   | T::Array<*::String*>                                                        | :heavy_minus_sign:                                                          | Comma-delimited fields to return                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsDocumentResponse)](../../models/operations/patchatsdocumentresponse.md)**



## remove_ats_document

Remove a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.document.remove_ats_document(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Document   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsDocumentResponse)](../../models/operations/removeatsdocumentresponse.md)**



## update_ats_document

Update a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.document.update_ats_document(connection_id="<id>", id="<id>", ats_document=::UnifiedRubySDK::Shared::AtsDocument.new(), fields_=[
  "<value>",
])

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Document                                                          |
| `ats_document`                                                              | [::UnifiedRubySDK::Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                                          | N/A                                                                         |
| `fields_`                                                                   | T::Array<*::String*>                                                        | :heavy_minus_sign:                                                          | Comma-delimited fields to return                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsDocumentResponse)](../../models/operations/updateatsdocumentresponse.md)**

