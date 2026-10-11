# Skill
(*skill*)

## Overview

### Available Operations

* [get_genai_skill](#get_genai_skill) - Retrieve a skill
* [list_genai_skills](#list_genai_skills) - List all skills
* [remove_genai_skill](#remove_genai_skill) - Remove a skill

## get_genai_skill

Retrieve a skill

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getGenaiSkill" method="get" path="/genai/{connection_id}/skill/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.skill.get_genai_skill(connection_id: '<id>', id: '<id>')

unless res.genai_skill.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Skill                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetGenaiSkillQueryParamFields](../../models/operations/getgenaiskillqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetGenaiSkillResponse)](../../models/operations/getgenaiskillresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_genai_skills

List all skills

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listGenaiSkills" method="get" path="/genai/{connection_id}/skill" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListGenaiSkillsRequest.new(
  connection_id: '<id>',
)

res = s.skill.list_genai_skills(request: req)

unless res.genai_skills.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListGenaiSkillsRequest](../../models/operations/listgenaiskillsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListGenaiSkillsResponse)](../../models/operations/listgenaiskillsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_genai_skill

Remove a skill

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeGenaiSkill" method="delete" path="/genai/{connection_id}/skill/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.skill.remove_genai_skill(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Skill      |

### Response

**[T.nilable(Models::Operations::RemoveGenaiSkillResponse)](../../models/operations/removegenaiskillresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |