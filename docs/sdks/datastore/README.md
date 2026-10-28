# Datastore
(*datastore*)

## Overview

### Available Operations

* [create_datastore_database](#create_datastore_database) - Create a database
* [create_datastore_query](#create_datastore_query) - Create a query
* [create_datastore_record](#create_datastore_record) - Create a record
* [create_datastore_table](#create_datastore_table) - Create a table
* [get_datastore_database](#get_datastore_database) - Retrieve a database
* [get_datastore_record](#get_datastore_record) - Retrieve a record
* [get_datastore_table](#get_datastore_table) - Retrieve a table
* [list_datastore_databases](#list_datastore_databases) - List all databases
* [list_datastore_records](#list_datastore_records) - List all records
* [list_datastore_tables](#list_datastore_tables) - List all tables
* [patch_datastore_database](#patch_datastore_database) - Update a database
* [patch_datastore_record](#patch_datastore_record) - Update a record
* [patch_datastore_table](#patch_datastore_table) - Update a table
* [remove_datastore_database](#remove_datastore_database) - Remove a database
* [remove_datastore_record](#remove_datastore_record) - Remove a record
* [remove_datastore_table](#remove_datastore_table) - Remove a table
* [update_datastore_database](#update_datastore_database) - Update a database
* [update_datastore_record](#update_datastore_record) - Update a record
* [update_datastore_table](#update_datastore_table) - Update a table

## create_datastore_database

Creates a DatastoreDatabase. Provide the unified DatastoreDatabase fields in the request body; they are mapped to the provider's API. Returns the created DatastoreDatabase.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDatastoreDatabase" method="post" path="/datastore/{connection_id}/database" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.datastore.create_datastore_database(datastore_database: Models::Shared::DatastoreDatabase.new(
  created_at: DateTime.iso8601('2019-03-05T14:31:00.223Z'),
  description: 'Substantia tantillus coniuratio repellat coerceo amet vito vorago.',
  id: 'a243112f-905c-4b19-b246-2afa1fe2b6b8',
  is_active: true,
  metadata: [],
  name: 'Rau - O\'Reilly',
  password: 'iYLhYwOHm0NLDvI',
  region: 'France',
  updated_at: DateTime.iso8601('2023-07-04T19:15:46.126Z'),
  web_url: 'https://optimal-signature.name',
), connection_id: '<id>')

unless res.datastore_database.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `datastore_database`                                                                                                                             | [Models::Shared::DatastoreDatabase](../../models/shared/datastoredatabase.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDatastoreDatabaseQueryParamFields](../../models/operations/createdatastoredatabasequeryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDatastoreDatabaseResponse)](../../models/operations/createdatastoredatabaseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_datastore_query

Creates a DatastoreQuery. Provide the unified DatastoreQuery fields in the request body; they are mapped to the provider's API. Returns the created DatastoreQuery.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDatastoreQuery" method="post" path="/datastore/{connection_id}/query" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.datastore.create_datastore_query(datastore_query: Models::Shared::DatastoreQuery.new(
  metadata: [],
  query: Models::Shared::PropertyDatastoreQueryQuery.new(
    filter: Models::Shared::PropertyDatastoreQueryQueryFilter.new(
      type: Models::Shared::PropertyDatastoreQueryQueryFilterType::OR,
    ),
    select: [
      '*',
    ],
    sql: '',
  ),
), connection_id: '<id>')

unless res.datastore_query.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `datastore_query`                                                                                                                                | [Models::Shared::DatastoreQuery](../../models/shared/datastorequery.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDatastoreQueryQueryParamFields](../../models/operations/createdatastorequeryqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDatastoreQueryResponse)](../../models/operations/createdatastorequeryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_datastore_record

Creates a DatastoreRecord. Provide the unified DatastoreRecord fields in the request body; they are mapped to the provider's API. Returns the created DatastoreRecord.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDatastoreRecord" method="post" path="/datastore/{connection_id}/record" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.datastore.create_datastore_record(datastore_record: Models::Shared::DatastoreRecord.new(
  created_at: DateTime.iso8601('2022-07-10T04:42:03.076Z'),
  fields_: {

  },
  id: '20c517f0-53a2-4a9d-9a68-8d857e0b4f4b',
  metadata: [],
  row_number: 33.0,
  updated_at: DateTime.iso8601('2025-03-09T11:35:23.986Z'),
), connection_id: '<id>')

unless res.datastore_record.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `datastore_record`                                                                                                                               | [Models::Shared::DatastoreRecord](../../models/shared/datastorerecord.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDatastoreRecordQueryParamFields](../../models/operations/createdatastorerecordqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDatastoreRecordResponse)](../../models/operations/createdatastorerecordresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.datastore.create_datastore_table(datastore_table: Models::Shared::DatastoreTable.new(
  created_at: DateTime.iso8601('2022-05-22T04:49:00.762Z'),
  description: 'Quasi adhuc paulatim ducimus carpo vomito magni tantum tubineus corona.',
  fields_: [
    Models::Shared::DatastoreField.new(
      description: 'Antea soluta itaque clamo despecto basium accendo.',
      id: '405a348b-a61e-419d-b5a4-ab3a1fd5ba43',
      is_indexed: true,
      is_unique: true,
      name: 'Ferry LLC',
      original_type: 'conservo',
      scale: 64.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
      id: '2c5201b3-429b-404c-a2cb-b319a5f4e7f5',
      is_nullable: true,
      is_unique: true,
      name: 'Hand - Nader',
      original_type: 'conservo',
      precision: 57.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
      id: '79d161dd-b8f9-4001-97f7-84c091361e3b',
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
      id: '7d4937ae-502e-49a0-820e-31011d86d998',
      name: 'Gislason, Gorczany and Hegmann',
      original_type: 'tego',
      precision: 94.0,
      scale: 24.0,
      type: Models::Shared::DatastoreFieldType::RELATION,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Communis coma cura audio aduro acer canis expedita.',
      id: '6bfa0f0a-4ba3-4a0f-969e-39280b42d427',
      is_indexed: true,
      is_primary_key: true,
      is_required: true,
      name: 'Graham, Steuber and Kshlerin',
      original_type: 'defessus',
      scale: 68.0,
      type: Models::Shared::DatastoreFieldType::EMAIL,
    ),
  ],
  id: '7bcbfcf1-03f5-4513-8231-6686fa0a87aa',
  metadata: [],
  name: 'Rogahn, Lowe and Heller',
  relationships: [
    Models::Shared::DatastoreRelationship.new(
      field: 'Macejkovic - Shields',
      name: 'Hyatt, Ryan and Nienow',
      table_id: '7bcbfcf1-03f5-4513-8231-6686fa0a87aa',
      type: Models::Shared::DatastoreRelationshipType::MANY,
    ),
  ],
  updated_at: DateTime.iso8601('2022-08-13T05:04:00.006Z'),
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

## get_datastore_database

Retrieves a single DatastoreDatabase by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDatastoreDatabase" method="get" path="/datastore/{connection_id}/database/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.datastore.get_datastore_database(connection_id: '<id>', id: '<id>')

unless res.datastore_database.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Database                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDatastoreDatabaseQueryParamFields](../../models/operations/getdatastoredatabasequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDatastoreDatabaseResponse)](../../models/operations/getdatastoredatabaseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_datastore_record

Retrieves a single DatastoreRecord by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDatastoreRecord" method="get" path="/datastore/{connection_id}/record/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.datastore.get_datastore_record(connection_id: '<id>', id: '<id>')

unless res.datastore_record.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Record                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDatastoreRecordQueryParamFields](../../models/operations/getdatastorerecordqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDatastoreRecordResponse)](../../models/operations/getdatastorerecordresponse.md)**

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

res = s.datastore.get_datastore_table(connection_id: '<id>', id: '<id>')

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

## list_datastore_databases

Returns a list of DatastoreDatabases. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDatastoreDatabases" method="get" path="/datastore/{connection_id}/database" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListDatastoreDatabasesRequest.new(
  connection_id: '<id>',
)

res = s.datastore.list_datastore_databases(request: req)

unless res.datastore_databases.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListDatastoreDatabasesRequest](../../models/operations/listdatastoredatabasesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListDatastoreDatabasesResponse)](../../models/operations/listdatastoredatabasesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_datastore_records

Returns a list of DatastoreRecords. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDatastoreRecords" method="get" path="/datastore/{connection_id}/record" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListDatastoreRecordsRequest.new(
  connection_id: '<id>',
)

res = s.datastore.list_datastore_records(request: req)

unless res.datastore_records.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListDatastoreRecordsRequest](../../models/operations/listdatastorerecordsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListDatastoreRecordsResponse)](../../models/operations/listdatastorerecordsresponse.md)**

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

res = s.datastore.list_datastore_tables(request: req)

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

## patch_datastore_database

Updates the DatastoreDatabase identified by `id`. Provide the unified DatastoreDatabase fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDatastoreDatabase" method="patch" path="/datastore/{connection_id}/database/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchDatastoreDatabaseRequest.new(
  datastore_database: Models::Shared::DatastoreDatabase.new(
    created_at: DateTime.iso8601('2019-03-05T14:31:00.223Z'),
    description: 'Substantia tantillus coniuratio repellat coerceo amet vito vorago.',
    id: '5179765b-7f28-47e5-bcab-7ef3edecaa5d',
    is_active: true,
    metadata: [],
    name: 'Rau - O\'Reilly',
    password: 'iYLhYwOHm0NLDvI',
    region: 'France',
    updated_at: DateTime.iso8601('2023-07-04T19:15:46.137Z'),
    web_url: 'https://optimal-signature.name',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.datastore.patch_datastore_database(request: req)

unless res.datastore_database.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchDatastoreDatabaseRequest](../../models/operations/patchdatastoredatabaserequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchDatastoreDatabaseResponse)](../../models/operations/patchdatastoredatabaseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_datastore_record

Updates the DatastoreRecord identified by `id`. Provide the unified DatastoreRecord fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDatastoreRecord" method="patch" path="/datastore/{connection_id}/record/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchDatastoreRecordRequest.new(
  datastore_record: Models::Shared::DatastoreRecord.new(
    created_at: DateTime.iso8601('2022-07-10T04:42:03.076Z'),
    fields_: {

    },
    id: '6941a83b-b615-4bc3-bfe9-2c82d16fb8bb',
    metadata: [],
    row_number: 33.0,
    updated_at: DateTime.iso8601('2025-03-09T11:35:23.997Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.datastore.patch_datastore_record(request: req)

unless res.datastore_record.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchDatastoreRecordRequest](../../models/operations/patchdatastorerecordrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchDatastoreRecordResponse)](../../models/operations/patchdatastorerecordresponse.md)**

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
        id: '137e0936-fd4a-45a4-8ff2-e0f8c80269fd',
        is_indexed: true,
        is_unique: true,
        name: 'Ferry LLC',
        original_type: 'conservo',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
        id: '1d42a306-86e9-47ab-8b8c-40301bdcee48',
        is_nullable: true,
        is_unique: true,
        name: 'Hand - Nader',
        original_type: 'conservo',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
        id: '1bedff5f-56e8-4fa2-9e09-7559cf505ade',
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
        id: '9c51e13e-9d2b-4cd1-873c-05b7b91d51c1',
        name: 'Gislason, Gorczany and Hegmann',
        original_type: 'tego',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Communis coma cura audio aduro acer canis expedita.',
        id: 'b0b5c681-1052-4e92-b16a-3daf9947a168',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Graham, Steuber and Kshlerin',
        original_type: 'defessus',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL,
      ),
    ],
    id: '5b437b1e-f961-47f2-bf74-e9531e547706',
    metadata: [],
    name: 'Rogahn, Lowe and Heller',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Macejkovic - Shields',
        name: 'Hyatt, Ryan and Nienow',
        table_id: '5b437b1e-f961-47f2-bf74-e9531e547706',
        type: Models::Shared::DatastoreRelationshipType::MANY,
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-13T05:04:00.008Z'),
    web_url: 'https://nervous-deck.com',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.datastore.patch_datastore_table(request: req)

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

## remove_datastore_database

Deletes the DatastoreDatabase identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeDatastoreDatabase" method="delete" path="/datastore/{connection_id}/database/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.datastore.remove_datastore_database(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Database   |

### Response

**[T.nilable(Models::Operations::RemoveDatastoreDatabaseResponse)](../../models/operations/removedatastoredatabaseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_datastore_record

Deletes the DatastoreRecord identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeDatastoreRecord" method="delete" path="/datastore/{connection_id}/record/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.datastore.remove_datastore_record(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Record     |

### Response

**[T.nilable(Models::Operations::RemoveDatastoreRecordResponse)](../../models/operations/removedatastorerecordresponse.md)**

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

res = s.datastore.remove_datastore_table(connection_id: '<id>', id: '<id>')

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

## update_datastore_database

Updates the DatastoreDatabase identified by `id`. Provide the unified DatastoreDatabase fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDatastoreDatabase" method="put" path="/datastore/{connection_id}/database/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateDatastoreDatabaseRequest.new(
  datastore_database: Models::Shared::DatastoreDatabase.new(
    created_at: DateTime.iso8601('2019-03-05T14:31:00.223Z'),
    description: 'Substantia tantillus coniuratio repellat coerceo amet vito vorago.',
    id: '5179765b-7f28-47e5-bcab-7ef3edecaa5d',
    is_active: true,
    metadata: [],
    name: 'Rau - O\'Reilly',
    password: 'iYLhYwOHm0NLDvI',
    region: 'France',
    updated_at: DateTime.iso8601('2023-07-04T19:15:46.137Z'),
    web_url: 'https://optimal-signature.name',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.datastore.update_datastore_database(request: req)

unless res.datastore_database.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateDatastoreDatabaseRequest](../../models/operations/updatedatastoredatabaserequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateDatastoreDatabaseResponse)](../../models/operations/updatedatastoredatabaseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_datastore_record

Updates the DatastoreRecord identified by `id`. Provide the unified DatastoreRecord fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDatastoreRecord" method="put" path="/datastore/{connection_id}/record/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateDatastoreRecordRequest.new(
  datastore_record: Models::Shared::DatastoreRecord.new(
    created_at: DateTime.iso8601('2022-07-10T04:42:03.076Z'),
    fields_: {

    },
    id: '6941a83b-b615-4bc3-bfe9-2c82d16fb8bb',
    metadata: [],
    row_number: 33.0,
    updated_at: DateTime.iso8601('2025-03-09T11:35:23.997Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.datastore.update_datastore_record(request: req)

unless res.datastore_record.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateDatastoreRecordRequest](../../models/operations/updatedatastorerecordrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateDatastoreRecordResponse)](../../models/operations/updatedatastorerecordresponse.md)**

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
        id: '137e0936-fd4a-45a4-8ff2-e0f8c80269fd',
        is_indexed: true,
        is_unique: true,
        name: 'Ferry LLC',
        original_type: 'conservo',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
        id: '1d42a306-86e9-47ab-8b8c-40301bdcee48',
        is_nullable: true,
        is_unique: true,
        name: 'Hand - Nader',
        original_type: 'conservo',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
        id: '1bedff5f-56e8-4fa2-9e09-7559cf505ade',
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
        id: '9c51e13e-9d2b-4cd1-873c-05b7b91d51c1',
        name: 'Gislason, Gorczany and Hegmann',
        original_type: 'tego',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Communis coma cura audio aduro acer canis expedita.',
        id: 'b0b5c681-1052-4e92-b16a-3daf9947a168',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Graham, Steuber and Kshlerin',
        original_type: 'defessus',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL,
      ),
    ],
    id: '5b437b1e-f961-47f2-bf74-e9531e547706',
    metadata: [],
    name: 'Rogahn, Lowe and Heller',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Macejkovic - Shields',
        name: 'Hyatt, Ryan and Nienow',
        table_id: '5b437b1e-f961-47f2-bf74-e9531e547706',
        type: Models::Shared::DatastoreRelationshipType::MANY,
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-13T05:04:00.008Z'),
    web_url: 'https://nervous-deck.com',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.datastore.update_datastore_table(request: req)

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