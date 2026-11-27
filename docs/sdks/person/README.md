# Person

## Overview

### Available Operations

* [get_unified_person](#get_unified_person) - Retrieve a person by ID
* [list_enrich_people](#list_enrich_people) - Retrieve enrichment information for a person
* [list_unified_people](#list_unified_people) - Search for persons by email addresses
* [remove_unified_person](#remove_unified_person) - Erase email addresses from the unified persons

## get_unified_person

Retrieve a person by ID

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedPerson" method="get" path="/unified/person/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.person.get_unified_person(id: '<id>')

unless res.person.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Person   |

### Response

**[T.nilable(Models::Operations::GetUnifiedPersonResponse)](../../models/operations/getunifiedpersonresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_enrich_people

Retrieve enrichment information for a person

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listEnrichPeople" method="get" path="/enrich/{connection_id}/person" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListEnrichPeopleRequest.new(
  connection_id: '<id>'
)
res = s.person.list_enrich_people(request: req)

unless res.enrich_person.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListEnrichPeopleRequest](../../models/operations/listenrichpeoplerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListEnrichPeopleResponse)](../../models/operations/listenrichpeopleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_people

Search for persons by email addresses

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedPeople" method="get" path="/unified/person" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.person.list_unified_people(query: '<value>')

unless res.people.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `query`                                                                                        | *::String*                                                                                     | :heavy_check_mark:                                                                             | Comma-delimited email addresses to search for (at most 100); returns each matching person once |

### Response

**[T.nilable(Models::Operations::ListUnifiedPeopleResponse)](../../models/operations/listunifiedpeopleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_unified_person

Erase email addresses from the unified persons

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUnifiedPerson" method="delete" path="/unified/person" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.person.remove_unified_person(query: '<value>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                             | Type                                                                                                                                  | Required                                                                                                                              | Description                                                                                                                           |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| `query`                                                                                                                               | *::String*                                                                                                                            | :heavy_check_mark:                                                                                                                    | Comma-delimited email addresses to erase from this workspace's unified persons (at most 100); a person left without emails is deleted |

### Response

**[T.nilable(Models::Operations::RemoveUnifiedPersonResponse)](../../models/operations/removeunifiedpersonresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |