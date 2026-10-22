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
  id: 'e0c9ce0f-0e14-4fd1-9f47-76bf5a07a674',
  is_active: true,
  metadata: [],
  name: 'Rau - O\'Reilly',
  password: 'iYLhYwOHm0NLDvI',
  region: 'France',
  updated_at: DateTime.iso8601('2023-07-01T09:16:35.545Z'),
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
  id: '6e2ea78d-c347-472e-9b7d-fd7b2425fec5',
  metadata: [],
  row_number: 33.0,
  updated_at: DateTime.iso8601('2025-03-05T17:54:09.893Z'),
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
      id: 'da378333-7f58-4188-afce-fbac74a3c8ed',
      is_indexed: true,
      is_unique: true,
      name: 'Ferry LLC',
      original_type: 'conservo',
      scale: 64.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
      id: '7345be56-0f74-472d-a3f1-5c6b238c9ae3',
      is_nullable: true,
      is_unique: true,
      name: 'Hand - Nader',
      original_type: 'conservo',
      precision: 57.0,
      type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
      id: '880921f3-dc83-4535-b01d-f7e12e5792a0',
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
      id: 'eb7a10a4-39e6-417c-858c-9c50cadf9e24',
      name: 'Gislason, Gorczany and Hegmann',
      original_type: 'tego',
      precision: 94.0,
      scale: 24.0,
      type: Models::Shared::DatastoreFieldType::RELATION,
    ),
    Models::Shared::DatastoreField.new(
      description: 'Communis coma cura audio aduro acer canis expedita.',
      id: 'f971dc77-d676-4ded-a3a3-fcaada734127',
      is_indexed: true,
      is_primary_key: true,
      is_required: true,
      name: 'Graham, Steuber and Kshlerin',
      original_type: 'defessus',
      scale: 68.0,
      type: Models::Shared::DatastoreFieldType::EMAIL,
    ),
  ],
  id: '30210c70-e6b1-4be4-88cb-672e9f7f2f15',
  metadata: [],
  name: 'Rogahn, Lowe and Heller',
  relationships: [
    Models::Shared::DatastoreRelationship.new(
      field: 'Macejkovic - Shields',
      name: 'Hyatt, Ryan and Nienow',
      table_id: '30210c70-e6b1-4be4-88cb-672e9f7f2f15',
      type: Models::Shared::DatastoreRelationshipType::MANY,
    ),
  ],
  updated_at: DateTime.iso8601('2022-08-12T21:38:55.429Z'),
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
    id: '529d7040-cf1a-419f-bc0a-2f829d09d216',
    is_active: true,
    metadata: [],
    name: 'Rau - O\'Reilly',
    password: 'iYLhYwOHm0NLDvI',
    region: 'France',
    updated_at: DateTime.iso8601('2023-07-01T09:16:35.553Z'),
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
    id: 'd93d5bfd-375d-4bed-a8a9-51f442ee8942',
    metadata: [],
    row_number: 33.0,
    updated_at: DateTime.iso8601('2025-03-05T17:54:09.904Z'),
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
        id: 'feed4d6d-f9de-45a6-83d1-953e9599a757',
        is_indexed: true,
        is_unique: true,
        name: 'Ferry LLC',
        original_type: 'conservo',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
        id: 'c7483079-4f51-426e-9cd9-0f11e8ad27f9',
        is_nullable: true,
        is_unique: true,
        name: 'Hand - Nader',
        original_type: 'conservo',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
        id: 'f800139f-605f-469f-beae-6e4e85b86916',
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
        id: '6d8a4ea2-724e-4b2e-903f-bf03e95862e2',
        name: 'Gislason, Gorczany and Hegmann',
        original_type: 'tego',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Communis coma cura audio aduro acer canis expedita.',
        id: '732a09b3-c878-4372-98cd-bb6cc56e1c58',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Graham, Steuber and Kshlerin',
        original_type: 'defessus',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL,
      ),
    ],
    id: 'd139f5e7-5eec-4ea3-b19a-db0aba770a17',
    metadata: [],
    name: 'Rogahn, Lowe and Heller',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Macejkovic - Shields',
        name: 'Hyatt, Ryan and Nienow',
        table_id: 'd139f5e7-5eec-4ea3-b19a-db0aba770a17',
        type: Models::Shared::DatastoreRelationshipType::MANY,
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-12T21:38:55.431Z'),
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
    id: '529d7040-cf1a-419f-bc0a-2f829d09d216',
    is_active: true,
    metadata: [],
    name: 'Rau - O\'Reilly',
    password: 'iYLhYwOHm0NLDvI',
    region: 'France',
    updated_at: DateTime.iso8601('2023-07-01T09:16:35.553Z'),
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
    id: 'd93d5bfd-375d-4bed-a8a9-51f442ee8942',
    metadata: [],
    row_number: 33.0,
    updated_at: DateTime.iso8601('2025-03-05T17:54:09.904Z'),
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
        id: 'feed4d6d-f9de-45a6-83d1-953e9599a757',
        is_indexed: true,
        is_unique: true,
        name: 'Ferry LLC',
        original_type: 'conservo',
        scale: 64.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Nulla cattus aequus sumo neque alter cauda subseco.',
        id: 'c7483079-4f51-426e-9cd9-0f11e8ad27f9',
        is_nullable: true,
        is_unique: true,
        name: 'Hand - Nader',
        original_type: 'conservo',
        precision: 57.0,
        type: Models::Shared::DatastoreFieldType::SINGLE_SELECT,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Utilis callide adhuc verumtamen doloremque ceno sui sint.',
        id: 'f800139f-605f-469f-beae-6e4e85b86916',
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
        id: '6d8a4ea2-724e-4b2e-903f-bf03e95862e2',
        name: 'Gislason, Gorczany and Hegmann',
        original_type: 'tego',
        precision: 94.0,
        scale: 24.0,
        type: Models::Shared::DatastoreFieldType::RELATION,
      ),
      Models::Shared::DatastoreField.new(
        description: 'Communis coma cura audio aduro acer canis expedita.',
        id: '732a09b3-c878-4372-98cd-bb6cc56e1c58',
        is_indexed: true,
        is_primary_key: true,
        is_required: true,
        name: 'Graham, Steuber and Kshlerin',
        original_type: 'defessus',
        scale: 68.0,
        type: Models::Shared::DatastoreFieldType::EMAIL,
      ),
    ],
    id: 'd139f5e7-5eec-4ea3-b19a-db0aba770a17',
    metadata: [],
    name: 'Rogahn, Lowe and Heller',
    relationships: [
      Models::Shared::DatastoreRelationship.new(
        field: 'Macejkovic - Shields',
        name: 'Hyatt, Ryan and Nienow',
        table_id: 'd139f5e7-5eec-4ea3-b19a-db0aba770a17',
        type: Models::Shared::DatastoreRelationshipType::MANY,
      ),
    ],
    updated_at: DateTime.iso8601('2022-08-12T21:38:55.431Z'),
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