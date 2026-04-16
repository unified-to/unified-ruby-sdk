# Document
(*document*)

## Overview

### Available Operations

* [create_ats_document](#create_ats_document) - Create a document
* [create_signing_document](#create_signing_document) - Create a document
* [get_ats_document](#get_ats_document) - Retrieve a document
* [get_signing_document](#get_signing_document) - Retrieve a document
* [list_ats_documents](#list_ats_documents) - List all documents
* [list_signing_documents](#list_signing_documents) - List all documents
* [patch_ats_document](#patch_ats_document) - Update a document
* [patch_signing_document](#patch_signing_document) - Update a document
* [remove_ats_document](#remove_ats_document) - Remove a document
* [remove_signing_document](#remove_signing_document) - Remove a document
* [update_ats_document](#update_ats_document) - Update a document
* [update_signing_document](#update_signing_document) - Update a document

## create_ats_document

Create a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsDocument" method="post" path="/ats/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.document.create_ats_document(ats_document: Models::Shared::AtsDocument.new(), connection_id: '<id>')

unless res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ats_document`                                                                                                                                   | [Models::Shared::AtsDocument](../../models/shared/atsdocument.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAtsDocumentQueryParamFields](../../models/operations/createatsdocumentqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAtsDocumentResponse)](../../models/operations/createatsdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_signing_document

Create a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createSigningDocument" method="post" path="/signing/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.document.create_signing_document(signing_document: Models::Shared::SigningDocument.new(), connection_id: '<id>')

unless res.signing_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `signing_document`                                                                                                                               | [Models::Shared::SigningDocument](../../models/shared/signingdocument.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateSigningDocumentQueryParamFields](../../models/operations/createsigningdocumentqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateSigningDocumentResponse)](../../models/operations/createsigningdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ats_document

Retrieve a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsDocument" method="get" path="/ats/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.document.get_ats_document(connection_id: '<id>', id: '<id>')

unless res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Document                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsDocumentQueryParamFields](../../models/operations/getatsdocumentqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsDocumentResponse)](../../models/operations/getatsdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_signing_document

Retrieve a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getSigningDocument" method="get" path="/signing/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.document.get_signing_document(connection_id: '<id>', id: '<id>')

unless res.signing_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Document                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetSigningDocumentQueryParamFields](../../models/operations/getsigningdocumentqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetSigningDocumentResponse)](../../models/operations/getsigningdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ats_documents

List all documents

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsDocuments" method="get" path="/ats/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsDocumentsRequest.new(
  connection_id: '<id>',
)

res = s.document.list_ats_documents(request: req)

unless res.ats_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListAtsDocumentsRequest](../../models/operations/listatsdocumentsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListAtsDocumentsResponse)](../../models/operations/listatsdocumentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_signing_documents

List all documents

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listSigningDocuments" method="get" path="/signing/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListSigningDocumentsRequest.new(
  connection_id: '<id>',
)

res = s.document.list_signing_documents(request: req)

unless res.signing_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListSigningDocumentsRequest](../../models/operations/listsigningdocumentsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListSigningDocumentsResponse)](../../models/operations/listsigningdocumentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ats_document

Update a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsDocument" method="patch" path="/ats/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAtsDocumentRequest.new(
  ats_document: Models::Shared::AtsDocument.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.document.patch_ats_document(request: req)

unless res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchAtsDocumentRequest](../../models/operations/patchatsdocumentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchAtsDocumentResponse)](../../models/operations/patchatsdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_signing_document

Update a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchSigningDocument" method="patch" path="/signing/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchSigningDocumentRequest.new(
  signing_document: Models::Shared::SigningDocument.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.document.patch_signing_document(request: req)

unless res.signing_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchSigningDocumentRequest](../../models/operations/patchsigningdocumentrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchSigningDocumentResponse)](../../models/operations/patchsigningdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ats_document

Remove a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsDocument" method="delete" path="/ats/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.document.remove_ats_document(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAtsDocumentResponse)](../../models/operations/removeatsdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_signing_document

Remove a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeSigningDocument" method="delete" path="/signing/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.document.remove_signing_document(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveSigningDocumentResponse)](../../models/operations/removesigningdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ats_document

Update a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsDocument" method="put" path="/ats/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAtsDocumentRequest.new(
  ats_document: Models::Shared::AtsDocument.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.document.update_ats_document(request: req)

unless res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateAtsDocumentRequest](../../models/operations/updateatsdocumentrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateAtsDocumentResponse)](../../models/operations/updateatsdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_signing_document

Update a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateSigningDocument" method="put" path="/signing/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateSigningDocumentRequest.new(
  signing_document: Models::Shared::SigningDocument.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.document.update_signing_document(request: req)

unless res.signing_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateSigningDocumentRequest](../../models/operations/updatesigningdocumentrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateSigningDocumentResponse)](../../models/operations/updatesigningdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |