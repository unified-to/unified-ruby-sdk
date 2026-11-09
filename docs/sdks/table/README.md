# Table
(*table*)

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
      id: '89a4672d-817a-4e11-b2c0-0253c5f94faf',
      is_indexed: true,
      is_unique: true,
      name: 'Ferry LLC',
      original_type: 'conservo',
      scale: 64.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
      id: '071f2488-29be-42d1-857c-8ad19bb49f14',
      is_nullable: true,
      is_unique: true,
      name: 'Hand - Nader',
      original_type: 'conservo',
      precision: 57.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
      id: '19ca3efe-697e-4d58-9841-a146823993ec',
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
      id: 'd46e2c6c-0af9-4b3e-b371-d2b97854f7f5',
      name: 'Gislason, Gorczany and Hegmann',
      original_type: 'tego',
      precision: 94.0,
      scale: 24.0,
      type: Models::Shared::DatastoreFieldType::RELATION,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Communis coma cura audio aduro acer canis expedita.',
      id: '632146c1-c841-4ba6-9d7c-07c466e3816f',
      is_indexed: true,
      is_primary_key: true,
      is_required: true,
      name: 'Graham, Steuber and Kshlerin',
      original_type: 'defessus',
      scale: 68.0,
      type: Models::Shared::DatastoreFieldType::EMAIL,
    ),
  ],
  id: '4a56896c-4702-4c86-98b4-fdcb7806c2b8',
  metadata: [],
  name: 'Rogahn, Lowe and Heller',
  relationships: [
    Models::Shared::DatastoreRelationship.new(
      field: 'Macejkovic - Shields',
      name: 'Hyatt, Ryan and Nienow',
      table_id: '4a56896c-4702-4c86-98b4-fdcb7806c2b8',
      type: Models::Shared::DatastoreRelationshipType::MANY,
    ),
  ],
  updated_at: DateTime.iso8601('2022-08-13T19:48:22.359Z'),
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

## get_commerce_table

Retrieves a single CommerceTable by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceTable" method="get" path="/commerce/{connection_id}/table/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

## list_commerce_tables

Returns a list of CommerceTables. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceTables" method="get" path="/commerce/{connection_id}/table" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceTablesRequest.new(
  connection_id: '<id>',
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
        id: 'a11e5072-a932-4fa5-a307-a3e0e007516a',
        is_indexed: true,
        is_unique: true,
        name: 'Ferry LLC',
        original_type: 'conservo',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
        id: '38d23442-6fc6-4c5b-bbad-ab67efb20f35',
        is_nullable: true,
        is_unique: true,
        name: 'Hand - Nader',
        original_type: 'conservo',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
        id: '990641f7-ab1b-4b9b-bce3-6fc8cac44226',
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
        id: 'ff0de67f-58c9-4c8a-893c-ac51019c9b56',
        name: 'Gislason, Gorczany and Hegmann',
        original_type: 'tego',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Communis coma cura audio aduro acer canis expedita.',
        id: '9d6b1a1d-7794-41a5-8d66-1274c4cb542f',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Graham, Steuber and Kshlerin',
        original_type: 'defessus',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL,
      ),
    ],
    id: '945d5880-32a4-4959-98fd-6d7063f6f8c6',
    metadata: [],
    name: 'Rogahn, Lowe and Heller',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Macejkovic - Shields',
        name: 'Hyatt, Ryan and Nienow',
        table_id: '945d5880-32a4-4959-98fd-6d7063f6f8c6',
        type: Models::Shared::DatastoreRelationshipType::MANY,
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-13T19:48:22.361Z'),
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
        id: 'a11e5072-a932-4fa5-a307-a3e0e007516a',
        is_indexed: true,
        is_unique: true,
        name: 'Ferry LLC',
        original_type: 'conservo',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
        id: '38d23442-6fc6-4c5b-bbad-ab67efb20f35',
        is_nullable: true,
        is_unique: true,
        name: 'Hand - Nader',
        original_type: 'conservo',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
        id: '990641f7-ab1b-4b9b-bce3-6fc8cac44226',
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
        id: 'ff0de67f-58c9-4c8a-893c-ac51019c9b56',
        name: 'Gislason, Gorczany and Hegmann',
        original_type: 'tego',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Communis coma cura audio aduro acer canis expedita.',
        id: '9d6b1a1d-7794-41a5-8d66-1274c4cb542f',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Graham, Steuber and Kshlerin',
        original_type: 'defessus',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL,
      ),
    ],
    id: '945d5880-32a4-4959-98fd-6d7063f6f8c6',
    metadata: [],
    name: 'Rogahn, Lowe and Heller',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Macejkovic - Shields',
        name: 'Hyatt, Ryan and Nienow',
        table_id: '945d5880-32a4-4959-98fd-6d7063f6f8c6',
        type: Models::Shared::DatastoreRelationshipType::MANY,
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-13T19:48:22.361Z'),
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