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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::CreateCrmEventRequest.new(
  path_params=Operations::CreateCrmEventRequest.new(
    connection_id="string",
    crm_event=Shared::CrmEvent.new(
      call=Shared::PropertyCrmEventCall.new(
        description="Grass-roots intangible superstructure",
        duration=6684.26,
      ),
      company_ids=.new[
        "string",
      ],
      contact_ids=.new[
        "string",
      ],
      created_at=DateTime.iso8601('2023-07-15T01:49:08.083Z'),
      deal_ids=.new[
        "string",
      ],
      email=Shared::PropertyCrmEventEmail.new(
        body="string",
        cc=.new[
          "string",
        ],
        from="string",
        subject="string",
        to=.new[
          "string",
        ],
      ),
      id="<ID>",
      lead_ids=.new[
        "string",
      ],
      meeting=Shared::PropertyCrmEventMeeting.new(
        description="Synergized systemic adapter",
        end_at=DateTime.iso8601('2021-06-19T06:42:51.348Z'),
        start_at=DateTime.iso8601('2022-08-06T14:40:43.070Z'),
        title="string",
      ),
      note=Shared::PropertyCrmEventNote.new(
        description="Horizontal zero administration architecture",
      ),
      raw=Shared::PropertyCrmEventRaw.new(),
      task=Shared::PropertyCrmEventTask.new(
        description="Extended 5th generation artificial intelligence",
        name="string",
        status="string",
      ),
      type=Shared::CrmEventType::TASK,
      updated_at=DateTime.iso8601('2022-07-14T14:31:08.257Z'),
    ),
  ),
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(
      description="Cross-group fresh-thinking circuit",
      duration=26.82,
    ),
    company_ids=.new[
      "string",
    ],
    contact_ids=.new[
      "string",
    ],
    created_at=DateTime.iso8601('2023-12-09T05:59:05.742Z'),
    deal_ids=.new[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      body="string",
      cc=.new[
        "string",
      ],
      from="string",
      subject="string",
      to=.new[
        "string",
      ],
    ),
    id="<ID>",
    lead_ids=.new[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(
      description="Virtual homogeneous intranet",
      end_at=DateTime.iso8601('2022-02-19T23:06:43.801Z'),
      start_at=DateTime.iso8601('2021-03-05T21:23:02.258Z'),
      title="string",
    ),
    note=Shared::PropertyCrmEventNote.new(
      description="Synergistic bottom-line internet solution",
    ),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(
      description="Vision-oriented tertiary system engine",
      name="string",
      status="string",
    ),
    type=Shared::CrmEventType::CALL,
    updated_at=DateTime.iso8601('2021-02-23T11:45:58.894Z'),
  ),
)
    
res = s.event.create_crm_event(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::GetCrmEventRequest.new(
  path_params=Operations::GetCrmEventRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmEventRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.event.get_crm_event(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::ListCrmEventsRequest.new(
  path_params=Operations::ListCrmEventsRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=4453.11,
    offset=4555.2,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-04-30T09:02:38.779Z'),
  ),
  query_params=Operations::ListCrmEventsRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=8888.17,
    offset=3018.9,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-11-25T04:59:22.252Z'),
  ),
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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::PatchCrmEventRequest.new(
  path_params=Operations::PatchCrmEventRequest.new(
    connection_id="string",
    id="<ID>",
    crm_event=Shared::CrmEvent.new(
      call=Shared::PropertyCrmEventCall.new(
        description="Multi-layered well-modulated middleware",
        duration=8718.07,
      ),
      company_ids=.new[
        "string",
      ],
      contact_ids=.new[
        "string",
      ],
      created_at=DateTime.iso8601('2022-07-20T20:04:26.682Z'),
      deal_ids=.new[
        "string",
      ],
      email=Shared::PropertyCrmEventEmail.new(
        body="string",
        cc=.new[
          "string",
        ],
        from="string",
        subject="string",
        to=.new[
          "string",
        ],
      ),
      id="<ID>",
      lead_ids=.new[
        "string",
      ],
      meeting=Shared::PropertyCrmEventMeeting.new(
        description="Horizontal uniform access",
        end_at=DateTime.iso8601('2022-11-19T03:29:57.620Z'),
        start_at=DateTime.iso8601('2021-05-11T20:55:56.558Z'),
        title="string",
      ),
      note=Shared::PropertyCrmEventNote.new(
        description="Exclusive non-volatile conglomeration",
      ),
      raw=Shared::PropertyCrmEventRaw.new(),
      task=Shared::PropertyCrmEventTask.new(
        description="Cross-platform bi-directional open architecture",
        name="string",
        status="string",
      ),
      type=Shared::CrmEventType::TASK,
      updated_at=DateTime.iso8601('2023-11-30T20:46:48.999Z'),
    ),
  ),
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(
      description="Diverse content-based circuit",
      duration=8142.36,
    ),
    company_ids=.new[
      "string",
    ],
    contact_ids=.new[
      "string",
    ],
    created_at=DateTime.iso8601('2022-10-23T05:51:18.046Z'),
    deal_ids=.new[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      body="string",
      cc=.new[
        "string",
      ],
      from="string",
      subject="string",
      to=.new[
        "string",
      ],
    ),
    id="<ID>",
    lead_ids=.new[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(
      description="Networked solution-oriented pricing structure",
      end_at=DateTime.iso8601('2021-04-04T22:32:03.633Z'),
      start_at=DateTime.iso8601('2023-09-07T12:04:09.815Z'),
      title="string",
    ),
    note=Shared::PropertyCrmEventNote.new(
      description="Multi-tiered object-oriented time-frame",
    ),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(
      description="User-friendly bi-directional core",
      name="string",
      status="string",
    ),
    type=Shared::CrmEventType::CALL,
    updated_at=DateTime.iso8601('2021-04-08T05:57:23.257Z'),
  ),
)
    
res = s.event.patch_crm_event(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::RemoveCrmEventRequest.new(
  path_params=Operations::RemoveCrmEventRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.event.remove_crm_event(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::UpdateCrmEventRequest.new(
  path_params=Operations::UpdateCrmEventRequest.new(
    connection_id="string",
    id="<ID>",
    crm_event=Shared::CrmEvent.new(
      call=Shared::PropertyCrmEventCall.new(
        description="Intuitive incremental orchestration",
        duration=4665.81,
      ),
      company_ids=.new[
        "string",
      ],
      contact_ids=.new[
        "string",
      ],
      created_at=DateTime.iso8601('2021-09-01T00:40:18.553Z'),
      deal_ids=.new[
        "string",
      ],
      email=Shared::PropertyCrmEventEmail.new(
        body="string",
        cc=.new[
          "string",
        ],
        from="string",
        subject="string",
        to=.new[
          "string",
        ],
      ),
      id="<ID>",
      lead_ids=.new[
        "string",
      ],
      meeting=Shared::PropertyCrmEventMeeting.new(
        description="Optional real-time process improvement",
        end_at=DateTime.iso8601('2023-10-22T11:59:17.612Z'),
        start_at=DateTime.iso8601('2023-01-03T21:08:02.575Z'),
        title="string",
      ),
      note=Shared::PropertyCrmEventNote.new(
        description="Switchable zero defect approach",
      ),
      raw=Shared::PropertyCrmEventRaw.new(),
      task=Shared::PropertyCrmEventTask.new(
        description="Pre-emptive system-worthy open system",
        name="string",
        status="string",
      ),
      type=Shared::CrmEventType::EMAIL,
      updated_at=DateTime.iso8601('2021-06-26T08:01:25.242Z'),
    ),
  ),
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(
      description="Team-oriented secondary framework",
      duration=5110.43,
    ),
    company_ids=.new[
      "string",
    ],
    contact_ids=.new[
      "string",
    ],
    created_at=DateTime.iso8601('2023-12-12T06:51:37.177Z'),
    deal_ids=.new[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      body="string",
      cc=.new[
        "string",
      ],
      from="string",
      subject="string",
      to=.new[
        "string",
      ],
    ),
    id="<ID>",
    lead_ids=.new[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(
      description="Assimilated logistical Graphic Interface",
      end_at=DateTime.iso8601('2022-12-09T02:28:34.901Z'),
      start_at=DateTime.iso8601('2022-08-16T12:29:55.598Z'),
      title="string",
    ),
    note=Shared::PropertyCrmEventNote.new(
      description="Organized full-range productivity",
    ),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(
      description="Devolved coherent collaboration",
      name="string",
      status="string",
    ),
    type=Shared::CrmEventType::CALL,
    updated_at=DateTime.iso8601('2022-11-14T17:38:48.959Z'),
  ),
)
    
res = s.event.update_crm_event(req)

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

