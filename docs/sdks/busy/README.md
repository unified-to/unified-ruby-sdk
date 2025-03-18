# Busy
(*busy*)

## Overview

### Available Operations

* [list_calendar_busies](#list_calendar_busies) - List all busies

## list_calendar_busies

List all busies

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListCalendarBusiesRequest.new(
  connection_id: "<id>",
)

res = s.busy.list_calendar_busies(req)

if ! res.calendar_busies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListCalendarBusiesRequest](../../models/operations/listcalendarbusiesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCalendarBusiesResponse)](../../models/operations/listcalendarbusiesresponse.md)**

