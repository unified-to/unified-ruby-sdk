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
      id: 'ac20f169-edfa-4f8a-99ff-6eecad5f3d6e',
      is_indexed: true,
      is_unique: true,
      name: 'Cassin - Greenfelder',
      original_type: 'tenus',
      scale: 64.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
    ),
    Models::Shared::DatastoreField.new(
      description: 'Alo admiratio vallum decet tamquam utilis callide adhuc verumtamen.',
      id: 'a19f30bc-eb08-46b9-aebb-e527220197a2',
      is_nullable: true,
      is_unique: true,
      name: 'Gerhold, Hermiston and Schmidt',
      original_type: 'doloremque',
      precision: 57.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
    ),
    Models::Shared::DatastoreField.new(
      description: 'Celer charisma coniuratio usus audax articulus triumphus tametsi cura.',
      id: 'd5d61ff3-a1d1-4780-957c-ff190506c5ad',
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
      id: '0c6a5c2f-7c26-4770-a063-4c4a8cadbf8f',
      name: 'Koch - Krajcik',
      original_type: 'umbra',
      precision: 94.0,
      scale: 24.0,
      type: Models::Shared::DatastoreFieldType::RELATION
    ),
    Models::Shared::DatastoreField.new(
      description: 'Demitto ullam solium bellicus urbs concedo.',
      id: 'cf8b1172-1412-44c1-a2fc-30e0dd1d6b0f',
      is_indexed: true,
      is_primary_key: true,
      is_required: true,
      name: 'Kling - Bosco',
      original_type: 'venustas',
      scale: 68.0,
      type: Models::Shared::DatastoreFieldType::EMAIL
    ),
  ],
  id: '2919cc48-9bdd-4eff-a19d-7746ee4d544b',
  metadata: [],
  name: 'Bauch LLC',
  relationships: [
    Models::Shared::DatastoreRelationship.new(
      field: 'Nikolaus - Kub',
      name: 'Brakus and Sons',
      table_id: '2919cc48-9bdd-4eff-a19d-7746ee4d544b',
      type: Models::Shared::DatastoreRelationshipType::MANY
    ),
  ],
  updated_at: DateTime.iso8601('2022-08-14T17:57:38.913Z'),
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
        id: 'b746866d-9941-48f4-9841-80e700247148',
        is_indexed: true,
        is_unique: true,
        name: 'Cassin - Greenfelder',
        original_type: 'tenus',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
      ),
      Models::Shared::DatastoreField.new(
        description: 'Alo admiratio vallum decet tamquam utilis callide adhuc verumtamen.',
        id: '515169e2-ef24-4933-8692-0bd044f810b4',
        is_nullable: true,
        is_unique: true,
        name: 'Gerhold, Hermiston and Schmidt',
        original_type: 'doloremque',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
      ),
      Models::Shared::DatastoreField.new(
        description: 'Celer charisma coniuratio usus audax articulus triumphus tametsi cura.',
        id: 'c4edc5f1-8c2f-44dd-a8a7-725da89459da',
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
        id: '7b53b1d5-896c-43f2-9be3-c76434882fdc',
        name: 'Koch - Krajcik',
        original_type: 'umbra',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION
      ),
      Models::Shared::DatastoreField.new(
        description: 'Demitto ullam solium bellicus urbs concedo.',
        id: 'ca5ec6ca-1330-45ff-bbbc-7473f908d28d',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Kling - Bosco',
        original_type: 'venustas',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL
      ),
    ],
    id: 'd675cf81-a79d-44e9-96f3-003e60615782',
    metadata: [],
    name: 'Bauch LLC',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Nikolaus - Kub',
        name: 'Brakus and Sons',
        table_id: 'd675cf81-a79d-44e9-96f3-003e60615782',
        type: Models::Shared::DatastoreRelationshipType::MANY
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-14T17:57:38.914Z'),
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
        id: 'b746866d-9941-48f4-9841-80e700247148',
        is_indexed: true,
        is_unique: true,
        name: 'Cassin - Greenfelder',
        original_type: 'tenus',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
      ),
      Models::Shared::DatastoreField.new(
        description: 'Alo admiratio vallum decet tamquam utilis callide adhuc verumtamen.',
        id: '515169e2-ef24-4933-8692-0bd044f810b4',
        is_nullable: true,
        is_unique: true,
        name: 'Gerhold, Hermiston and Schmidt',
        original_type: 'doloremque',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT
      ),
      Models::Shared::DatastoreField.new(
        description: 'Celer charisma coniuratio usus audax articulus triumphus tametsi cura.',
        id: 'c4edc5f1-8c2f-44dd-a8a7-725da89459da',
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
        id: '7b53b1d5-896c-43f2-9be3-c76434882fdc',
        name: 'Koch - Krajcik',
        original_type: 'umbra',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION
      ),
      Models::Shared::DatastoreField.new(
        description: 'Demitto ullam solium bellicus urbs concedo.',
        id: 'ca5ec6ca-1330-45ff-bbbc-7473f908d28d',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Kling - Bosco',
        original_type: 'venustas',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL
      ),
    ],
    id: 'd675cf81-a79d-44e9-96f3-003e60615782',
    metadata: [],
    name: 'Bauch LLC',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Nikolaus - Kub',
        name: 'Brakus and Sons',
        table_id: 'd675cf81-a79d-44e9-96f3-003e60615782',
        type: Models::Shared::DatastoreRelationshipType::MANY
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-14T17:57:38.914Z'),
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