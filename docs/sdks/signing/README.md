# Signing
(*signing*)

## Overview

### Available Operations

* [create_signing_document](#create_signing_document) - Create a document
* [create_signing_signatory](#create_signing_signatory) - Create a signatory
* [get_signing_document](#get_signing_document) - Retrieve a document
* [get_signing_signatory](#get_signing_signatory) - Retrieve a signatory
* [get_signing_template](#get_signing_template) - Retrieve a template
* [list_signing_documents](#list_signing_documents) - List all documents
* [list_signing_signatories](#list_signing_signatories) - List all signatories
* [list_signing_templates](#list_signing_templates) - List all templates
* [patch_signing_document](#patch_signing_document) - Update a document
* [patch_signing_signatory](#patch_signing_signatory) - Update a signatory
* [remove_signing_document](#remove_signing_document) - Remove a document
* [remove_signing_signatory](#remove_signing_signatory) - Remove a signatory
* [update_signing_document](#update_signing_document) - Update a document
* [update_signing_signatory](#update_signing_signatory) - Update a signatory

## create_signing_document

Creates a SigningDocument. Provide the unified SigningDocument fields in the request body; they are mapped to the provider's API. Returns the created SigningDocument.

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

res = s.signing.create_signing_document(signing_document: Models::Shared::SigningDocument.new(
  created_at: DateTime.iso8601('2021-05-02T09:35:23.679Z'),
  description: 'Aer asporto caste umbra coerceo anser color allatus aestas perspiciatis.',
  expires_at: DateTime.iso8601('2021-06-04T01:21:34.949Z'),
  id: 'acf18c0b-1742-445b-ac09-afe70a4ee6f9',
  metadata: [],
  name: 'Denesik Group NDA',
  sent_at: DateTime.iso8601('2022-06-30T23:47:36.097Z'),
  status: Models::Shared::SigningDocumentStatus::DRAFT,
  updated_at: DateTime.iso8601('2025-09-08T12:09:14.972Z'),
), connection_id: '<id>')

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

## create_signing_signatory

Creates a SigningSignatory. Provide the unified SigningSignatory fields in the request body; they are mapped to the provider's API. Returns the created SigningSignatory.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createSigningSignatory" method="post" path="/signing/{connection_id}/signatory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.signing.create_signing_signatory(signing_signatory: Models::Shared::SigningSignatory.new(
  created_at: DateTime.iso8601('2022-04-16T19:25:01.966Z'),
  email: 'anais.lakin@icloud.com',
  id: '8be6a929-89d3-4578-8886-f973358acea6',
  metadata: [],
  name: 'Anais Lakin',
  role: Models::Shared::SigningSignatoryRole::SIGNER,
  status: Models::Shared::SigningSignatoryStatus::ERROR,
  updated_at: DateTime.iso8601('2024-05-21T01:52:38.827Z'),
), connection_id: '<id>')

unless res.signing_signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `signing_signatory`                                                                                                                              | [Models::Shared::SigningSignatory](../../models/shared/signingsignatory.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateSigningSignatoryQueryParamFields](../../models/operations/createsigningsignatoryqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateSigningSignatoryResponse)](../../models/operations/createsigningsignatoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_signing_document

Retrieves a single SigningDocument by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

res = s.signing.get_signing_document(connection_id: '<id>', id: '<id>')

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

## get_signing_signatory

Retrieves a single SigningSignatory by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getSigningSignatory" method="get" path="/signing/{connection_id}/signatory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.signing.get_signing_signatory(connection_id: '<id>', id: '<id>')

unless res.signing_signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Signatory                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetSigningSignatoryQueryParamFields](../../models/operations/getsigningsignatoryqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetSigningSignatoryResponse)](../../models/operations/getsigningsignatoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_signing_template

Retrieves a single SigningTemplate by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getSigningTemplate" method="get" path="/signing/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.signing.get_signing_template(connection_id: '<id>', id: '<id>')

unless res.signing_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Template                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetSigningTemplateQueryParamFields](../../models/operations/getsigningtemplatequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetSigningTemplateResponse)](../../models/operations/getsigningtemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_signing_documents

Returns a list of SigningDocuments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

res = s.signing.list_signing_documents(request: req)

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

## list_signing_signatories

Returns a list of SigningSignatories. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listSigningSignatories" method="get" path="/signing/{connection_id}/signatory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListSigningSignatoriesRequest.new(
  connection_id: '<id>',
)

res = s.signing.list_signing_signatories(request: req)

unless res.signing_signatories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListSigningSignatoriesRequest](../../models/operations/listsigningsignatoriesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListSigningSignatoriesResponse)](../../models/operations/listsigningsignatoriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_signing_templates

Returns a list of SigningTemplates. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listSigningTemplates" method="get" path="/signing/{connection_id}/template" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListSigningTemplatesRequest.new(
  connection_id: '<id>',
)

res = s.signing.list_signing_templates(request: req)

unless res.signing_templates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListSigningTemplatesRequest](../../models/operations/listsigningtemplatesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListSigningTemplatesResponse)](../../models/operations/listsigningtemplatesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_signing_document

Updates the SigningDocument identified by `id`. Provide the unified SigningDocument fields to change in the request body.

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
  signing_document: Models::Shared::SigningDocument.new(
    created_at: DateTime.iso8601('2021-05-02T09:35:23.679Z'),
    description: 'Aer asporto caste umbra coerceo anser color allatus aestas perspiciatis.',
    expires_at: DateTime.iso8601('2021-06-04T01:21:34.949Z'),
    id: 'd6d3ab66-ee8c-4a3a-bdac-c8be6e45bc1a',
    metadata: [],
    name: 'Denesik Group NDA',
    sent_at: DateTime.iso8601('2022-06-30T23:47:36.102Z'),
    status: Models::Shared::SigningDocumentStatus::DRAFT,
    updated_at: DateTime.iso8601('2025-09-08T12:09:14.989Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.signing.patch_signing_document(request: req)

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

## patch_signing_signatory

Updates the SigningSignatory identified by `id`. Provide the unified SigningSignatory fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchSigningSignatory" method="patch" path="/signing/{connection_id}/signatory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchSigningSignatoryRequest.new(
  signing_signatory: Models::Shared::SigningSignatory.new(
    created_at: DateTime.iso8601('2022-04-16T19:25:01.966Z'),
    email: 'anais.lakin@icloud.com',
    id: 'e0e0ec59-de9a-45dc-a126-eada14383333',
    metadata: [],
    name: 'Anais Lakin',
    role: Models::Shared::SigningSignatoryRole::SIGNER,
    status: Models::Shared::SigningSignatoryStatus::ERROR,
    updated_at: DateTime.iso8601('2024-05-21T01:52:38.834Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.signing.patch_signing_signatory(request: req)

unless res.signing_signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchSigningSignatoryRequest](../../models/operations/patchsigningsignatoryrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchSigningSignatoryResponse)](../../models/operations/patchsigningsignatoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_signing_document

Deletes the SigningDocument identified by `id`.

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

res = s.signing.remove_signing_document(connection_id: '<id>', id: '<id>')

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

## remove_signing_signatory

Deletes the SigningSignatory identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeSigningSignatory" method="delete" path="/signing/{connection_id}/signatory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.signing.remove_signing_signatory(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Signatory  |

### Response

**[T.nilable(Models::Operations::RemoveSigningSignatoryResponse)](../../models/operations/removesigningsignatoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_signing_document

Updates the SigningDocument identified by `id`. Provide the unified SigningDocument fields to change in the request body.

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
  signing_document: Models::Shared::SigningDocument.new(
    created_at: DateTime.iso8601('2021-05-02T09:35:23.679Z'),
    description: 'Aer asporto caste umbra coerceo anser color allatus aestas perspiciatis.',
    expires_at: DateTime.iso8601('2021-06-04T01:21:34.949Z'),
    id: 'd6d3ab66-ee8c-4a3a-bdac-c8be6e45bc1a',
    metadata: [],
    name: 'Denesik Group NDA',
    sent_at: DateTime.iso8601('2022-06-30T23:47:36.102Z'),
    status: Models::Shared::SigningDocumentStatus::DRAFT,
    updated_at: DateTime.iso8601('2025-09-08T12:09:14.989Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.signing.update_signing_document(request: req)

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

## update_signing_signatory

Updates the SigningSignatory identified by `id`. Provide the unified SigningSignatory fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateSigningSignatory" method="put" path="/signing/{connection_id}/signatory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateSigningSignatoryRequest.new(
  signing_signatory: Models::Shared::SigningSignatory.new(
    created_at: DateTime.iso8601('2022-04-16T19:25:01.966Z'),
    email: 'anais.lakin@icloud.com',
    id: 'e0e0ec59-de9a-45dc-a126-eada14383333',
    metadata: [],
    name: 'Anais Lakin',
    role: Models::Shared::SigningSignatoryRole::SIGNER,
    status: Models::Shared::SigningSignatoryStatus::ERROR,
    updated_at: DateTime.iso8601('2024-05-21T01:52:38.834Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.signing.update_signing_signatory(request: req)

unless res.signing_signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateSigningSignatoryRequest](../../models/operations/updatesigningsignatoryrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateSigningSignatoryResponse)](../../models/operations/updatesigningsignatoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |