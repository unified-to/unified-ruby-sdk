# Authentication
(*authentication*)

## Overview

The authentication endpoints.

### Available Operations

* [authenticate](#authenticate) - Authenticate with the API by providing a username and password.

## authenticate

Authenticate with the API by providing a username and password.

### Example Usage

```ruby
require_relative openapi


s = OpenApiSDK::Speakeasybar.new

   
req = Operations::AuthenticateRequestBody.new(
  request=Operations::AuthenticateRequestBody.new(
    password="Nxq_X5HXg1lXJa5",
    username="Asa_Stamm77",
  ),
)
    
res = s.authentication.authenticate(req)

if ! res.authenticate_200_application_json_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::AuthenticateRequestBody](../../models/operations/authenticaterequestbody.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::AuthenticateResponse)](../../models/operations/authenticateresponse.md)**

