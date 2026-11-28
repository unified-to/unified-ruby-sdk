# Table

## Overview

### Available Operations

* [create_datastore_table](#create_datastore_table) - Create a table
* [get_commerce_table](#get_commerce_table) - Retrieve a table
* [get_datastore_table](#get_datastore_table) - Retrieve a table
* [list_commerce_tables](#list_commerce_tables) - List all tables
* [list_datastore_tables](#list_datastore_tables) - List all tables
* [patch_datastore_table](#patch_datastore_table) - Update a table
* [remove_datastore_table](#remove_datastore_table) - Remove a table
* [update_datastore_table](#update_datastore_table) - Update a table

## create_datastore_table

Creates a DatastoreTable. Provide the unified DatastoreTable fields in the request body; they are mapped to the provider's API. Returns the created DatastoreTable.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDatastoreTable" method="post" path="/datastore/{connection_id}/table" example="datastore_table" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.table.create_datastore_table(datastore_table: Models::Shared::DatastoreTable.new(
  created_at: DateTime.iso8601('2022-05-22T04:49:00.762Z'),
  description: 'Carpo vomito magni tantum tubineus corona deputo.',
  fields_: [
    Models::Shared::DatastoreField.new(
      description: 'Basium accendo conservo curto thesis amet supellex.',
      id: '1b39aa01-5249-49bc-883c-56b50e9ef714',
      is_indexed: true,
      is_unique: true,
      name: 'Cassin - Greenfelder',
      original_type: 'tenus',
      scale: 64.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
    ),
    Models::Shared::DatastoreField.new(
      description: 'Alo admiratio vallum decet tamquam utilis callide adhuc verumtamen.',
      id: 'f7c329b0-b1a8-462a-97b4-a6dcb12892c6',
      is_nullable: true,
      is_unique: true,
      name: 'Gerhold, Hermiston and Schmidt',
      original_type: 'doloremque',
      precision: 57.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
    ),
    Models::Shared::DatastoreField.new(
      description: 'Celer charisma coniuratio usus audax articulus triumphus tametsi cura.',
      id: '304d2266-f849-45d5-94f7-7a8d151d0f6e',
      is_indexed: true,
      is_nullable: true,
      is_unique: true,
      max_length: 62.0,
      name: 'McDermott LLC',
      original_type: 'tenetur',
      precision: 47.0,
      type: Models::Shared::DatastoreFieldType::NUMBER
    ),
    Models::Shared::DatastoreField.new(
      description: 'Adficio voluptatibus ciminatio.',
      id: '90990819-e8bb-44f5-875a-5e28dc7e2584',
      name: 'Koch - Krajcik',
      original_type: 'umbra',
      precision: 94.0,
      scale: 24.0,
      type: Models::Shared::DatastoreFieldType::RELATION
    ),
    Models::Shared::DatastoreField.new(
      description: 'Demitto ullam solium bellicus urbs concedo.',
      id: '67c94883-ff52-4990-a802-05c81ee4d8c1',
      is_indexed: true,
      is_primary_key: true,
      is_required: true,
      name: 'Kling - Bosco',
      original_type: 'venustas',
      scale: 68.0,
      type: Models::Shared::DatastoreFieldType::EMAIL
    ),
  ],
  id: '67ad16a2-8e89-4448-b1bf-d3d82ae7593e',
  metadata: [],
  name: 'Bauch LLC',
  relationships: [
    Models::Shared::DatastoreRelationship.new(
      field: 'Nikolaus - Kub',
      name: 'Brakus and Sons',
      table_id: '67ad16a2-8e89-4448-b1bf-d3d82ae7593e',
      type: Models::Shared::DatastoreRelationshipType::MANY
    ),
  ],
  updated_at: DateTime.iso8601('2022-08-14T19:11:18.425Z'),
  web_url: 'https://torn-bench.biz/'
), connection_id: '<id>')

unless res.datastore_table.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `datastore_table`                                                                                                                                | [Models::Shared::DatastoreTable](../../models/shared/datastoretable.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDatastoreTableQueryParamFields](../../models/operations/createdatastoretablequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDatastoreTableResponse)](../../models/operations/createdatastoretableresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_commerce_table

Retrieves a single CommerceTable by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceTable" method="get" path="/commerce/{connection_id}/table/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.table.get_commerce_table(connection_id: '<id>', id: '<id>')

unless res.commerce_table.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Table                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceTableQueryParamFields](../../models/operations/getcommercetablequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceTableResponse)](../../models/operations/getcommercetableresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_datastore_table

Retrieves a single DatastoreTable by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDatastoreTable" method="get" path="/datastore/{connection_id}/table/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.table.get_datastore_table(connection_id: '<id>', id: '<id>')

unless res.datastore_table.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Table                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDatastoreTableQueryParamFields](../../models/operations/getdatastoretablequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDatastoreTableResponse)](../../models/operations/getdatastoretableresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_tables

Returns a list of CommerceTables. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceTables" method="get" path="/commerce/{connection_id}/table" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceTablesRequest.new(
  connection_id: '<id>'
)
res = s.table.list_commerce_tables(request: req)

unless res.commerce_tables.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListCommerceTablesRequest](../../models/operations/listcommercetablesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListCommerceTablesResponse)](../../models/operations/listcommercetablesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_datastore_tables

Returns a list of DatastoreTables. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDatastoreTables" method="get" path="/datastore/{connection_id}/table" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListDatastoreTablesRequest.new(
  connection_id: '<id>'
)
res = s.table.list_datastore_tables(request: req)

unless res.datastore_tables.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListDatastoreTablesRequest](../../models/operations/listdatastoretablesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListDatastoreTablesResponse)](../../models/operations/listdatastoretablesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_datastore_table

Updates the DatastoreTable identified by `id`. Provide the unified DatastoreTable fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDatastoreTable" method="patch" path="/datastore/{connection_id}/table/{id}" example="datastore_table" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchDatastoreTableRequest.new(
  datastore_table: Models::Shared::DatastoreTable.new(
    created_at: DateTime.iso8601('2022-05-22T04:49:00.762Z'),
    description: 'Carpo vomito magni tantum tubineus corona deputo.',
    fields_: [
      Models::Shared::DatastoreField.new(
        description: 'Basium accendo conservo curto thesis amet supellex.',
        id: '093a01bf-5d70-4e73-b180-8a0884661901',
        is_indexed: true,
        is_unique: true,
        name: 'Cassin - Greenfelder',
        original_type: 'tenus',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
      ),
      Models::Shared::DatastoreField.new(
        description: 'Alo admiratio vallum decet tamquam utilis callide adhuc verumtamen.',
        id: '07cc91e3-8afc-47db-8000-36ab3b7fdf65',
        is_nullable: true,
        is_unique: true,
        name: 'Gerhold, Hermiston and Schmidt',
        original_type: 'doloremque',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
      ),
      Models::Shared::DatastoreField.new(
        description: 'Celer charisma coniuratio usus audax articulus triumphus tametsi cura.',
        id: 'd6d11c21-afef-4b52-8773-ca96fb03695e',
        is_indexed: true,
        is_nullable: true,
        is_unique: true,
        max_length: 62.0,
        name: 'McDermott LLC',
        original_type: 'tenetur',
        precision: 47.0,
        type: Models::Shared::DatastoreFieldType::NUMBER
      ),
      Models::Shared::DatastoreField.new(
        description: 'Adficio voluptatibus ciminatio.',
        id: 'f91b11f5-4cfa-46a3-b8ab-8a5458bba1fe',
        name: 'Koch - Krajcik',
        original_type: 'umbra',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION
      ),
      Models::Shared::DatastoreField.new(
        description: 'Demitto ullam solium bellicus urbs concedo.',
        id: '97e8ba19-d58e-4468-b2c3-9cc07e6873d0',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Kling - Bosco',
        original_type: 'venustas',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL
      ),
    ],
    id: '5c4d6b43-5116-471a-9b08-3b5b58bb6f3f',
    metadata: [],
    name: 'Bauch LLC',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Nikolaus - Kub',
        name: 'Brakus and Sons',
        table_id: '5c4d6b43-5116-471a-9b08-3b5b58bb6f3f',
        type: Models::Shared::DatastoreRelationshipType::MANY
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-14T19:11:18.426Z'),
    web_url: 'https://torn-bench.biz/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.table.patch_datastore_table(request: req)

unless res.datastore_table.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchDatastoreTableRequest](../../models/operations/patchdatastoretablerequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchDatastoreTableResponse)](../../models/operations/patchdatastoretableresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_datastore_table

Deletes the DatastoreTable identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeDatastoreTable" method="delete" path="/datastore/{connection_id}/table/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.table.remove_datastore_table(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Table      |

### Response

**[T.nilable(Models::Operations::RemoveDatastoreTableResponse)](../../models/operations/removedatastoretableresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_datastore_table

Updates the DatastoreTable identified by `id`. Provide the unified DatastoreTable fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDatastoreTable" method="put" path="/datastore/{connection_id}/table/{id}" example="datastore_table" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateDatastoreTableRequest.new(
  datastore_table: Models::Shared::DatastoreTable.new(
    created_at: DateTime.iso8601('2022-05-22T04:49:00.762Z'),
    description: 'Carpo vomito magni tantum tubineus corona deputo.',
    fields_: [
      Models::Shared::DatastoreField.new(
        description: 'Basium accendo conservo curto thesis amet supellex.',
        id: '093a01bf-5d70-4e73-b180-8a0884661901',
        is_indexed: true,
        is_unique: true,
        name: 'Cassin - Greenfelder',
        original_type: 'tenus',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
      ),
      Models::Shared::DatastoreField.new(
        description: 'Alo admiratio vallum decet tamquam utilis callide adhuc verumtamen.',
        id: '07cc91e3-8afc-47db-8000-36ab3b7fdf65',
        is_nullable: true,
        is_unique: true,
        name: 'Gerhold, Hermiston and Schmidt',
        original_type: 'doloremque',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
      ),
      Models::Shared::DatastoreField.new(
        description: 'Celer charisma coniuratio usus audax articulus triumphus tametsi cura.',
        id: 'd6d11c21-afef-4b52-8773-ca96fb03695e',
        is_indexed: true,
        is_nullable: true,
        is_unique: true,
        max_length: 62.0,
        name: 'McDermott LLC',
        original_type: 'tenetur',
        precision: 47.0,
        type: Models::Shared::DatastoreFieldType::NUMBER
      ),
      Models::Shared::DatastoreField.new(
        description: 'Adficio voluptatibus ciminatio.',
        id: 'f91b11f5-4cfa-46a3-b8ab-8a5458bba1fe',
        name: 'Koch - Krajcik',
        original_type: 'umbra',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION
      ),
      Models::Shared::DatastoreField.new(
        description: 'Demitto ullam solium bellicus urbs concedo.',
        id: '97e8ba19-d58e-4468-b2c3-9cc07e6873d0',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Kling - Bosco',
        original_type: 'venustas',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL
      ),
    ],
    id: '5c4d6b43-5116-471a-9b08-3b5b58bb6f3f',
    metadata: [],
    name: 'Bauch LLC',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Nikolaus - Kub',
        name: 'Brakus and Sons',
        table_id: '5c4d6b43-5116-471a-9b08-3b5b58bb6f3f',
        type: Models::Shared::DatastoreRelationshipType::MANY
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-14T19:11:18.426Z'),
    web_url: 'https://torn-bench.biz/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.table.update_datastore_table(request: req)

unless res.datastore_table.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateDatastoreTableRequest](../../models/operations/updatedatastoretablerequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateDatastoreTableResponse)](../../models/operations/updatedatastoretableresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |