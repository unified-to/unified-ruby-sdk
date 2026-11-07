# Table
(*table*)

## Overview

### Available Operations

* [create_datastore_table](#create_datastore_table) - Create a table
* [get_datastore_table](#get_datastore_table) - Retrieve a table
* [list_datastore_tables](#list_datastore_tables) - List all tables
* [patch_datastore_table](#patch_datastore_table) - Update a table
* [remove_datastore_table](#remove_datastore_table) - Remove a table
* [update_datastore_table](#update_datastore_table) - Update a table

## create_datastore_table

Creates a DatastoreTable. Provide the unified DatastoreTable fields in the request body; they are mapped to the provider's API. Returns the created DatastoreTable.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDatastoreTable" method="post" path="/datastore/{connection_id}/table" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.table.create_datastore_table(datastore_table: Models::Shared::DatastoreTable.new(
  created_at: DateTime.iso8601('2022-05-22T04:49:00.762Z'),
  description: 'Quasi adhuc paulatim ducimus carpo vomito magni tantum tubineus corona.',
  fields_: [
    Models::Shared::DatastoreField.new(
      description: 'Antea soluta itaque clamo despecto basium accendo.',
      id: 'f2f92f73-331d-48eb-949a-ea669cc50db6',
      is_indexed: true,
      is_unique: true,
      name: 'Ferry LLC',
      original_type: 'conservo',
      scale: 64.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
      id: '481b19e1-a677-48ca-92c8-92280397d6a1',
      is_nullable: true,
      is_unique: true,
      name: 'Hand - Nader',
      original_type: 'conservo',
      precision: 57.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
      id: '707c5e4a-8949-4921-a163-b48b47d862d7',
      is_indexed: true,
      is_nullable: true,
      is_unique: true,
      max_length: 62.0,
      name: 'Toy - Kiehn',
      original_type: 'sursum',
      precision: 47.0,
      type: Models::Shared::DatastoreFieldType::NUMBER,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Audax articulus triumphus tametsi cura tenetur colligo arcesso bestia.',
      id: '2618a5fe-09ed-47c7-b221-b23bc19b221a',
      name: 'Gislason, Gorczany and Hegmann',
      original_type: 'tego',
      precision: 94.0,
      scale: 24.0,
      type: Models::Shared::DatastoreFieldType::RELATION,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Communis coma cura audio aduro acer canis expedita.',
      id: '60d955e1-24d5-40e8-bbb7-fa366969997a',
      is_indexed: true,
      is_primary_key: true,
      is_required: true,
      name: 'Graham, Steuber and Kshlerin',
      original_type: 'defessus',
      scale: 68.0,
      type: Models::Shared::DatastoreFieldType::EMAIL,
    ),
  ],
  id: 'e75a4e4e-7129-46c6-9755-cb72c6275765',
  metadata: [],
  name: 'Rogahn, Lowe and Heller',
  relationships: [
    Models::Shared::DatastoreRelationship.new(
      field: 'Macejkovic - Shields',
      name: 'Hyatt, Ryan and Nienow',
      table_id: 'e75a4e4e-7129-46c6-9755-cb72c6275765',
      type: Models::Shared::DatastoreRelationshipType::MANY,
    ),
  ],
  updated_at: DateTime.iso8601('2022-08-13T17:21:45.586Z'),
  web_url: 'https://nervous-deck.com',
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

## get_datastore_table

Retrieves a single DatastoreTable by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDatastoreTable" method="get" path="/datastore/{connection_id}/table/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

## list_datastore_tables

Returns a list of DatastoreTables. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDatastoreTables" method="get" path="/datastore/{connection_id}/table" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListDatastoreTablesRequest.new(
  connection_id: '<id>',
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

<!-- UsageSnippet language="ruby" operationID="patchDatastoreTable" method="patch" path="/datastore/{connection_id}/table/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchDatastoreTableRequest.new(
  datastore_table: Models::Shared::DatastoreTable.new(
    created_at: DateTime.iso8601('2022-05-22T04:49:00.762Z'),
    description: 'Quasi adhuc paulatim ducimus carpo vomito magni tantum tubineus corona.',
    fields_: [
      Models::Shared::DatastoreField.new(
        description: 'Antea soluta itaque clamo despecto basium accendo.',
        id: 'd68309e3-db66-4b05-ab91-fbcf6d8523c1',
        is_indexed: true,
        is_unique: true,
        name: 'Ferry LLC',
        original_type: 'conservo',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
        id: '7f3ca59e-beb9-4aa3-a105-420f603a2dbb',
        is_nullable: true,
        is_unique: true,
        name: 'Hand - Nader',
        original_type: 'conservo',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
        id: '4f881f7a-430d-480d-8948-7e8f087ec9ed',
        is_indexed: true,
        is_nullable: true,
        is_unique: true,
        max_length: 62.0,
        name: 'Toy - Kiehn',
        original_type: 'sursum',
        precision: 47.0,
        type: Models::Shared::DatastoreFieldType::NUMBER,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Audax articulus triumphus tametsi cura tenetur colligo arcesso bestia.',
        id: '2c7bc9e4-920f-4257-8f92-7dbf5e6bfead',
        name: 'Gislason, Gorczany and Hegmann',
        original_type: 'tego',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Communis coma cura audio aduro acer canis expedita.',
        id: '6e86669b-85bd-40c4-89ba-3b306716982f',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Graham, Steuber and Kshlerin',
        original_type: 'defessus',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL,
      ),
    ],
    id: 'e3d6db59-fdf5-4240-a99a-d2bba1d7e0e8',
    metadata: [],
    name: 'Rogahn, Lowe and Heller',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Macejkovic - Shields',
        name: 'Hyatt, Ryan and Nienow',
        table_id: 'e3d6db59-fdf5-4240-a99a-d2bba1d7e0e8',
        type: Models::Shared::DatastoreRelationshipType::MANY,
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-13T17:21:45.587Z'),
    web_url: 'https://nervous-deck.com',
  ),
  connection_id: '<id>',
  id: '<id>',
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
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

<!-- UsageSnippet language="ruby" operationID="updateDatastoreTable" method="put" path="/datastore/{connection_id}/table/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateDatastoreTableRequest.new(
  datastore_table: Models::Shared::DatastoreTable.new(
    created_at: DateTime.iso8601('2022-05-22T04:49:00.762Z'),
    description: 'Quasi adhuc paulatim ducimus carpo vomito magni tantum tubineus corona.',
    fields_: [
      Models::Shared::DatastoreField.new(
        description: 'Antea soluta itaque clamo despecto basium accendo.',
        id: 'd68309e3-db66-4b05-ab91-fbcf6d8523c1',
        is_indexed: true,
        is_unique: true,
        name: 'Ferry LLC',
        original_type: 'conservo',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
        id: '7f3ca59e-beb9-4aa3-a105-420f603a2dbb',
        is_nullable: true,
        is_unique: true,
        name: 'Hand - Nader',
        original_type: 'conservo',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
        id: '4f881f7a-430d-480d-8948-7e8f087ec9ed',
        is_indexed: true,
        is_nullable: true,
        is_unique: true,
        max_length: 62.0,
        name: 'Toy - Kiehn',
        original_type: 'sursum',
        precision: 47.0,
        type: Models::Shared::DatastoreFieldType::NUMBER,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Audax articulus triumphus tametsi cura tenetur colligo arcesso bestia.',
        id: '2c7bc9e4-920f-4257-8f92-7dbf5e6bfead',
        name: 'Gislason, Gorczany and Hegmann',
        original_type: 'tego',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Communis coma cura audio aduro acer canis expedita.',
        id: '6e86669b-85bd-40c4-89ba-3b306716982f',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Graham, Steuber and Kshlerin',
        original_type: 'defessus',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL,
      ),
    ],
    id: 'e3d6db59-fdf5-4240-a99a-d2bba1d7e0e8',
    metadata: [],
    name: 'Rogahn, Lowe and Heller',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Macejkovic - Shields',
        name: 'Hyatt, Ryan and Nienow',
        table_id: 'e3d6db59-fdf5-4240-a99a-d2bba1d7e0e8',
        type: Models::Shared::DatastoreRelationshipType::MANY,
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-13T17:21:45.587Z'),
    web_url: 'https://nervous-deck.com',
  ),
  connection_id: '<id>',
  id: '<id>',
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