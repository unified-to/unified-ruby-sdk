# Record
(*record*)

## Overview

### Available Operations

* [create_datastore_record2](#create_datastore_record2) - Create a record
* [get_datastore_record2](#get_datastore_record2) - Retrieve a record
* [list_datastore_records2](#list_datastore_records2) - List all records
* [patch_datastore_record2](#patch_datastore_record2) - Update a record
* [remove_datastore_record2](#remove_datastore_record2) - Remove a record
* [update_datastore_record2](#update_datastore_record2) - Update a record

## create_datastore_record2

Create a record

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDatastoreRecord2" method="post" path="/datastore/{connection_id}/record" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.record.create_datastore_record2(datastore_record: Models::Shared::DatastoreRecord.new(
  fields_: {
    "key": Models::Shared::DatastoreFieldValue.new(),
  },
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
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDatastoreRecord2QueryParamFields](../../models/operations/createdatastorerecord2queryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDatastoreRecord2Response)](../../models/operations/createdatastorerecord2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_datastore_record2

Retrieve a record

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDatastoreRecord2" method="get" path="/datastore/{connection_id}/record/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.record.get_datastore_record2(connection_id: '<id>', id: '<id>')

unless res.datastore_record.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Record                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDatastoreRecord2QueryParamFields](../../models/operations/getdatastorerecord2queryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDatastoreRecord2Response)](../../models/operations/getdatastorerecord2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_datastore_records2

List all records

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDatastoreRecords2" method="get" path="/datastore/{connection_id}/record" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListDatastoreRecords2Request.new(
  connection_id: '<id>',
)

res = s.record.list_datastore_records2(request: req)

unless res.datastore_records.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListDatastoreRecords2Request](../../models/operations/listdatastorerecords2request.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListDatastoreRecords2Response)](../../models/operations/listdatastorerecords2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_datastore_record2

Update a record

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDatastoreRecord2" method="patch" path="/datastore/{connection_id}/record/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchDatastoreRecord2Request.new(
  datastore_record: Models::Shared::DatastoreRecord.new(
    fields_: {
      "key": Models::Shared::DatastoreFieldValue.new(),
    },
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.record.patch_datastore_record2(request: req)

unless res.datastore_record.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchDatastoreRecord2Request](../../models/operations/patchdatastorerecord2request.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchDatastoreRecord2Response)](../../models/operations/patchdatastorerecord2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_datastore_record2

Remove a record

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeDatastoreRecord2" method="delete" path="/datastore/{connection_id}/record/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.record.remove_datastore_record2(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveDatastoreRecord2Response)](../../models/operations/removedatastorerecord2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_datastore_record2

Update a record

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDatastoreRecord2" method="put" path="/datastore/{connection_id}/record/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateDatastoreRecord2Request.new(
  datastore_record: Models::Shared::DatastoreRecord.new(
    fields_: {

    },
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.record.update_datastore_record2(request: req)

unless res.datastore_record.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateDatastoreRecord2Request](../../models/operations/updatedatastorerecord2request.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateDatastoreRecord2Response)](../../models/operations/updatedatastorerecord2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |