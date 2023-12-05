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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAtsDocumentRequest.new(
  connection_id="string",
  ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ),
)
    
res = s.document.create_ats_document(connection_id="string", ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ))

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `ats_document`                                            | [Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::CreateAtsDocumentResponse)](../../models/operations/createatsdocumentresponse.md)**


## get_ats_document

Retrieve a document

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetAtsDocumentRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.document.get_ats_document(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Document               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAtsDocumentResponse)](../../models/operations/getatsdocumentresponse.md)**


## list_ats_documents

List all documents

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListAtsDocumentsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.document.list_ats_documents(req)

if ! res.ats_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::ListAtsDocumentsRequest](../../models/operations/listatsdocumentsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::ListAtsDocumentsResponse)](../../models/operations/listatsdocumentsresponse.md)**


## patch_ats_document

Update a document

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchAtsDocumentRequest.new(
  connection_id="string",
  id="<ID>",
  ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ),
)
    
res = s.document.patch_ats_document(connection_id="string", id="string", ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ))

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the Document                                        |
| `ats_document`                                            | [Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::PatchAtsDocumentResponse)](../../models/operations/patchatsdocumentresponse.md)**


## remove_ats_document

Remove a document

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveAtsDocumentRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.document.remove_ats_document(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Document   |


### Response

**[T.nilable(Operations::RemoveAtsDocumentResponse)](../../models/operations/removeatsdocumentresponse.md)**


## update_ats_document

Update a document

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateAtsDocumentRequest.new(
  connection_id="string",
  id="<ID>",
  ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ),
)
    
res = s.document.update_ats_document(connection_id="string", id="string", ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ))

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the Document                                        |
| `ats_document`                                            | [Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::UpdateAtsDocumentResponse)](../../models/operations/updateatsdocumentresponse.md)**

