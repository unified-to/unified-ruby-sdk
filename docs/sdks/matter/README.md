# Matter
(*matter*)

## Overview

### Available Operations

* [create_legal_matter](#create_legal_matter) - Create a matter
* [get_legal_matter](#get_legal_matter) - Retrieve a matter
* [list_legal_matters](#list_legal_matters) - List all matters
* [patch_legal_matter](#patch_legal_matter) - Update a matter
* [remove_legal_matter](#remove_legal_matter) - Remove a matter
* [update_legal_matter](#update_legal_matter) - Update a matter

## create_legal_matter

Creates a LegalMatter. Provide the unified LegalMatter fields in the request body; they are mapped to the provider's API. Returns the created LegalMatter.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLegalMatter" method="post" path="/legal/{connection_id}/matter" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.matter.create_legal_matter(legal_matter: Models::Shared::LegalMatter.new(
  billing_method: Models::Shared::BillingMethod::OTHER,
  client_reference: 'qSrjIBAD',
  company_ids: [],
  contact_ids: [],
  created_at: DateTime.iso8601('2023-05-28T04:10:42.375Z'),
  currency: 'BOB',
  description: 'Speciosus cresco aut cotidie temeritas arma.',
  id: '0a3fcc05-e27a-4b82-949f-badc14cd9a55',
  metadata: [],
  name: 'Walter v. Franecki - Spinka',
  number: '2023-3062',
  opened_at: DateTime.iso8601('2023-07-05T07:02:28.411Z'),
  parties: [
    Models::Shared::LegalParty.new(
      description: 'Urban Walter',
      role: Models::Shared::LegalPartyRole::EXPERT,
    ),
  ],
  stage: 'currus',
  status: Models::Shared::LegalMatterStatus::OPEN,
  statute_of_limitations_at: DateTime.iso8601('2027-06-29T20:58:22.479Z'),
  updated_at: DateTime.iso8601('2023-07-17T11:03:06.872Z'),
), connection_id: '<id>')

unless res.legal_matter.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `legal_matter`                                                                                                                                   | [Models::Shared::LegalMatter](../../models/shared/legalmatter.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLegalMatterQueryParamFields](../../models/operations/createlegalmatterqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLegalMatterResponse)](../../models/operations/createlegalmatterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_legal_matter

Retrieves a single LegalMatter by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLegalMatter" method="get" path="/legal/{connection_id}/matter/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.matter.get_legal_matter(connection_id: '<id>', id: '<id>')

unless res.legal_matter.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Matter                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLegalMatterQueryParamFields](../../models/operations/getlegalmatterqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLegalMatterResponse)](../../models/operations/getlegalmatterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_legal_matters

Returns a list of LegalMatters. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLegalMatters" method="get" path="/legal/{connection_id}/matter" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLegalMattersRequest.new(
  connection_id: '<id>',
)

res = s.matter.list_legal_matters(request: req)

unless res.legal_matters.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListLegalMattersRequest](../../models/operations/listlegalmattersrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListLegalMattersResponse)](../../models/operations/listlegalmattersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_legal_matter

Updates the LegalMatter identified by `id`. Provide the unified LegalMatter fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLegalMatter" method="patch" path="/legal/{connection_id}/matter/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLegalMatterRequest.new(
  legal_matter: Models::Shared::LegalMatter.new(
    billing_method: Models::Shared::BillingMethod::OTHER,
    client_reference: 'qSrjIBAD',
    company_ids: [],
    contact_ids: [],
    created_at: DateTime.iso8601('2023-05-28T04:10:42.375Z'),
    currency: 'BOB',
    description: 'Speciosus cresco aut cotidie temeritas arma.',
    id: '0b6277a1-c527-4b4f-be63-395f7b3ff9b0',
    metadata: [],
    name: 'Walter v. Franecki - Spinka',
    number: '2023-3062',
    opened_at: DateTime.iso8601('2023-07-05T07:02:28.412Z'),
    parties: [
      Models::Shared::LegalParty.new(
        description: 'Urban Walter',
        role: Models::Shared::LegalPartyRole::EXPERT,
      ),
    ],
    stage: 'currus',
    status: Models::Shared::LegalMatterStatus::OPEN,
    statute_of_limitations_at: DateTime.iso8601('2027-06-29T20:58:22.506Z'),
    updated_at: DateTime.iso8601('2023-07-17T11:03:06.873Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.matter.patch_legal_matter(request: req)

unless res.legal_matter.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchLegalMatterRequest](../../models/operations/patchlegalmatterrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchLegalMatterResponse)](../../models/operations/patchlegalmatterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_legal_matter

Deletes the LegalMatter identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLegalMatter" method="delete" path="/legal/{connection_id}/matter/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.matter.remove_legal_matter(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Matter     |

### Response

**[T.nilable(Models::Operations::RemoveLegalMatterResponse)](../../models/operations/removelegalmatterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_legal_matter

Updates the LegalMatter identified by `id`. Provide the unified LegalMatter fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLegalMatter" method="put" path="/legal/{connection_id}/matter/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLegalMatterRequest.new(
  legal_matter: Models::Shared::LegalMatter.new(
    billing_method: Models::Shared::BillingMethod::OTHER,
    client_reference: 'qSrjIBAD',
    company_ids: [],
    contact_ids: [],
    created_at: DateTime.iso8601('2023-05-28T04:10:42.375Z'),
    currency: 'BOB',
    description: 'Speciosus cresco aut cotidie temeritas arma.',
    id: '0b6277a1-c527-4b4f-be63-395f7b3ff9b0',
    metadata: [],
    name: 'Walter v. Franecki - Spinka',
    number: '2023-3062',
    opened_at: DateTime.iso8601('2023-07-05T07:02:28.412Z'),
    parties: [
      Models::Shared::LegalParty.new(
        description: 'Urban Walter',
        role: Models::Shared::LegalPartyRole::EXPERT,
      ),
    ],
    stage: 'currus',
    status: Models::Shared::LegalMatterStatus::OPEN,
    statute_of_limitations_at: DateTime.iso8601('2027-06-29T20:58:22.506Z'),
    updated_at: DateTime.iso8601('2023-07-17T11:03:06.873Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.matter.update_legal_matter(request: req)

unless res.legal_matter.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateLegalMatterRequest](../../models/operations/updatelegalmatterrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateLegalMatterResponse)](../../models/operations/updatelegalmatterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |