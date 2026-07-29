# Saml
(*saml*)

## Overview

### Available Operations

* [get_unified_integration_saml](#get_unified_integration_saml) - Sign in a user via SAML

## get_unified_integration_saml

Returns a SAML authentication URL for the specified integration.  Once a successful authentication occurs, the name and email are returned inside a jwt parameter, which is a JSON web token that is base-64 encoded.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedIntegrationSaml" method="get" path="/unified/integration/saml/{workspace_id}/{integration_type}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::GetUnifiedIntegrationSamlRequest.new(
  integration_type: '<value>',
  workspace_id: '<id>',
)

res = s.saml.get_unified_integration_saml(request: req)

unless res.res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::GetUnifiedIntegrationSamlRequest](../../models/operations/getunifiedintegrationsamlrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::GetUnifiedIntegrationSamlResponse)](../../models/operations/getunifiedintegrationsamlresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |