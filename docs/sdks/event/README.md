# Event


### Available Operations

* [create_crm_event](#create_crm_event) - Create a event
* [get_crm_event](#get_crm_event) - Retrieve a event
* [list_crm_events](#list_crm_events) - List all events
* [patch_crm_event](#patch_crm_event) - Update a event
* [remove_crm_event](#remove_crm_event) - Remove a event
* [update_crm_event](#update_crm_event) - Update a event

## create_crm_event

Create a event

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateCrmEventRequest.new(
  connection_id="string",
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      attachment_file_ids=[
        "string",
      ],
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ),
)
    
res = s.event.create_crm_event(connection_id="string", crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      attachment_file_ids=[
        "string",
      ],
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ))

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                 | *String*                                                                                                        | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `crm_event`                                                                                                     | [Shared::CrmEvent](../../models/shared/crmevent.md)                                                             | :heavy_minus_sign:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |


### Response

**[T.nilable(Operations::CreateCrmEventResponse)](../../models/operations/createcrmeventresponse.md)**


## get_crm_event

Retrieve a event

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetCrmEventRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.event.get_crm_event(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Event                  |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmEventResponse)](../../models/operations/getcrmeventresponse.md)**


## list_crm_events

List all events

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListCrmEventsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.event.list_crm_events(req)

if ! res.crm_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Operations::ListCrmEventsRequest](../../models/operations/listcrmeventsrequest.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |


### Response

**[T.nilable(Operations::ListCrmEventsResponse)](../../models/operations/listcrmeventsresponse.md)**


## patch_crm_event

Update a event

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchCrmEventRequest.new(
  connection_id="string",
  id="<ID>",
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      attachment_file_ids=[
        "string",
      ],
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ),
)
    
res = s.event.patch_crm_event(connection_id="string", id="string", crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      attachment_file_ids=[
        "string",
      ],
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ))

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                 | *String*                                                                                                        | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *String*                                                                                                        | :heavy_check_mark:                                                                                              | ID of the Event                                                                                                 |
| `crm_event`                                                                                                     | [Shared::CrmEvent](../../models/shared/crmevent.md)                                                             | :heavy_minus_sign:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |


### Response

**[T.nilable(Operations::PatchCrmEventResponse)](../../models/operations/patchcrmeventresponse.md)**


## remove_crm_event

Remove a event

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveCrmEventRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.event.remove_crm_event(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Event      |


### Response

**[T.nilable(Operations::RemoveCrmEventResponse)](../../models/operations/removecrmeventresponse.md)**


## update_crm_event

Update a event

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateCrmEventRequest.new(
  connection_id="string",
  id="<ID>",
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      attachment_file_ids=[
        "string",
      ],
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ),
)
    
res = s.event.update_crm_event(connection_id="string", id="string", crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      attachment_file_ids=[
        "string",
      ],
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ))

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                 | *String*                                                                                                        | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *String*                                                                                                        | :heavy_check_mark:                                                                                              | ID of the Event                                                                                                 |
| `crm_event`                                                                                                     | [Shared::CrmEvent](../../models/shared/crmevent.md)                                                             | :heavy_minus_sign:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |


### Response

**[T.nilable(Operations::UpdateCrmEventResponse)](../../models/operations/updatecrmeventresponse.md)**

