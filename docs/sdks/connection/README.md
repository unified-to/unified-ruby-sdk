# Connection


### Available Operations

* [create_unified_connection](#create_unified_connection) - Create connection
* [get_unified_connection](#get_unified_connection) - Retrieve connection
* [list_unified_connections](#list_unified_connections) - List all connections
* [patch_unified_connection](#patch_unified_connection) - Update connection
* [remove_unified_connection](#remove_unified_connection) - Remove connection
* [update_unified_connection](#update_unified_connection) - Update connection

## create_unified_connection

Create connection

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Shared::Connection.new(
  request=Shared::Connection.new(
    auth=Shared::PropertyConnectionAuth.new(
      access_token="string",
      api_url="string",
      app_id="string",
      authorize_url="string",
      client_id="string",
      client_secret="string",
      consumer_key="string",
      consumer_secret="string",
      emails=.new[
        "string",
      ],
      expires_in=9168.17,
      expiry_date=DateTime.iso8601('2022-04-10T21:22:48.918Z'),
      key="<key>",
      meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
      name="string",
      other_auth_info=.new[
        "string",
      ],
      pem="string",
      refresh_token="string",
      refresh_token_expires_date=DateTime.iso8601('2022-04-18T01:30:06.276Z'),
      refresh_token_expires_in=6876.67,
      state="string",
      token="string",
      token_url="string",
    ),
    auth_aws_arn="string",
    categories=.new[
      Shared::PropertyConnectionCategories::AUTH,
    ],
    created_at=DateTime.iso8601('2022-07-03T20:48:03.468Z'),
    environment="string",
    external_xref="string",
    id="<ID>",
    integration_type="string",
    is_paused=false,
    permissions=.new[
      Shared::PropertyConnectionPermissions::ATS_JOB_READ,
    ],
    updated_at=DateTime.iso8601('2023-06-29T03:45:15.691Z'),
    workspace_id="string",
  ),
)
    
res = s.connection.create_unified_connection(req)

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                               | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `request`                                               | [Shared::Connection](../../models/shared/connection.md) | :heavy_check_mark:                                      | The request object to use for the request.              |


### Response

**[T.nilable(Operations::CreateUnifiedConnectionResponse)](../../models/operations/createunifiedconnectionresponse.md)**


## get_unified_connection

Retrieve connection

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::GetUnifiedConnectionRequest.new(
  path_params=Operations::GetUnifiedConnectionRequest.new(
    id="<ID>",
  ),
)
    
res = s.connection.get_unified_connection(req)

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Connection |


### Response

**[T.nilable(Operations::GetUnifiedConnectionResponse)](../../models/operations/getunifiedconnectionresponse.md)**


## list_unified_connections

List all connections

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::ListUnifiedConnectionsRequest.new(
  query_params=Operations::ListUnifiedConnectionsRequest.new(
    categories=.new[
      Operations::Categories::ENRICH,
    ],
    env="string",
    external_xref="string",
    limit=9638.08,
    offset=15.12,
    order="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-06-20T10:15:04.986Z'),
  ),
)
    
res = s.connection.list_unified_connections(req)

if ! res.connections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListUnifiedConnectionsRequest](../../models/operations/listunifiedconnectionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListUnifiedConnectionsResponse)](../../models/operations/listunifiedconnectionsresponse.md)**


## patch_unified_connection

Update connection

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::PatchUnifiedConnectionRequest.new(
  path_params=Operations::PatchUnifiedConnectionRequest.new(
    id="<ID>",
    connection=Shared::Connection.new(
      auth=Shared::PropertyConnectionAuth.new(
        access_token="string",
        api_url="string",
        app_id="string",
        authorize_url="string",
        client_id="string",
        client_secret="string",
        consumer_key="string",
        consumer_secret="string",
        emails=.new[
          "string",
        ],
        expires_in=6565.39,
        expiry_date=DateTime.iso8601('2023-02-09T01:57:38.348Z'),
        key="<key>",
        meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
        name="string",
        other_auth_info=.new[
          "string",
        ],
        pem="string",
        refresh_token="string",
        refresh_token_expires_date=DateTime.iso8601('2023-12-29T01:22:10.837Z'),
        refresh_token_expires_in=8456.09,
        state="string",
        token="string",
        token_url="string",
      ),
      auth_aws_arn="string",
      categories=.new[
        Shared::PropertyConnectionCategories::ATS,
      ],
      created_at=DateTime.iso8601('2021-05-09T04:29:35.007Z'),
      environment="string",
      external_xref="string",
      id="<ID>",
      integration_type="string",
      is_paused=false,
      permissions=.new[
        Shared::PropertyConnectionPermissions::ACCOUNTING_PAYMENT_READ,
      ],
      updated_at=DateTime.iso8601('2022-07-09T00:35:16.005Z'),
      workspace_id="string",
    ),
  ),
  connection=Shared::Connection.new(
    auth=Shared::PropertyConnectionAuth.new(
      access_token="string",
      api_url="string",
      app_id="string",
      authorize_url="string",
      client_id="string",
      client_secret="string",
      consumer_key="string",
      consumer_secret="string",
      emails=.new[
        "string",
      ],
      expires_in=3733.96,
      expiry_date=DateTime.iso8601('2023-06-03T17:57:56.069Z'),
      key="<key>",
      meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
      name="string",
      other_auth_info=.new[
        "string",
      ],
      pem="string",
      refresh_token="string",
      refresh_token_expires_date=DateTime.iso8601('2023-03-09T18:14:07.585Z'),
      refresh_token_expires_in=9653.77,
      state="string",
      token="string",
      token_url="string",
    ),
    auth_aws_arn="string",
    categories=.new[
      Shared::PropertyConnectionCategories::CRM,
    ],
    created_at=DateTime.iso8601('2022-06-01T22:20:44.897Z'),
    environment="string",
    external_xref="string",
    id="<ID>",
    integration_type="string",
    is_paused=false,
    permissions=.new[
      Shared::PropertyConnectionPermissions::ATS_APPLICATION_READ,
    ],
    updated_at=DateTime.iso8601('2021-01-28T14:34:49.486Z'),
    workspace_id="string",
  ),
)
    
res = s.connection.patch_unified_connection(req)

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `id`                                                                 | *String*                                                             | :heavy_check_mark:                                                   | ID of the Connection                                                 |
| `connection`                                                         | [Shared::Connection](../../models/shared/connection.md)              | :heavy_minus_sign:                                                   | A connection represents a specific authentication of an integration. |


### Response

**[T.nilable(Operations::PatchUnifiedConnectionResponse)](../../models/operations/patchunifiedconnectionresponse.md)**


## remove_unified_connection

Remove connection

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::RemoveUnifiedConnectionRequest.new(
  path_params=Operations::RemoveUnifiedConnectionRequest.new(
    id="<ID>",
  ),
)
    
res = s.connection.remove_unified_connection(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Connection |


### Response

**[T.nilable(Operations::RemoveUnifiedConnectionResponse)](../../models/operations/removeunifiedconnectionresponse.md)**


## update_unified_connection

Update connection

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::UpdateUnifiedConnectionRequest.new(
  path_params=Operations::UpdateUnifiedConnectionRequest.new(
    id="<ID>",
    connection=Shared::Connection.new(
      auth=Shared::PropertyConnectionAuth.new(
        access_token="string",
        api_url="string",
        app_id="string",
        authorize_url="string",
        client_id="string",
        client_secret="string",
        consumer_key="string",
        consumer_secret="string",
        emails=.new[
          "string",
        ],
        expires_in=7910.65,
        expiry_date=DateTime.iso8601('2022-07-13T00:55:19.590Z'),
        key="<key>",
        meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
        name="string",
        other_auth_info=.new[
          "string",
        ],
        pem="string",
        refresh_token="string",
        refresh_token_expires_date=DateTime.iso8601('2023-12-14T16:56:17.383Z'),
        refresh_token_expires_in=7427.91,
        state="string",
        token="string",
        token_url="string",
      ),
      auth_aws_arn="string",
      categories=.new[
        Shared::PropertyConnectionCategories::CRM,
      ],
      created_at=DateTime.iso8601('2021-03-09T18:14:10.859Z'),
      environment="string",
      external_xref="string",
      id="<ID>",
      integration_type="string",
      is_paused=false,
      permissions=.new[
        Shared::PropertyConnectionPermissions::UC_CALL_READ,
      ],
      updated_at=DateTime.iso8601('2022-06-09T04:40:33.286Z'),
      workspace_id="string",
    ),
  ),
  connection=Shared::Connection.new(
    auth=Shared::PropertyConnectionAuth.new(
      access_token="string",
      api_url="string",
      app_id="string",
      authorize_url="string",
      client_id="string",
      client_secret="string",
      consumer_key="string",
      consumer_secret="string",
      emails=.new[
        "string",
      ],
      expires_in=609.6,
      expiry_date=DateTime.iso8601('2022-01-09T08:00:07.180Z'),
      key="<key>",
      meta=Shared::PropertyPropertyConnectionAuthMeta.new(),
      name="string",
      other_auth_info=.new[
        "string",
      ],
      pem="string",
      refresh_token="string",
      refresh_token_expires_date=DateTime.iso8601('2022-03-20T09:47:08.318Z'),
      refresh_token_expires_in=9059.39,
      state="string",
      token="string",
      token_url="string",
    ),
    auth_aws_arn="string",
    categories=.new[
      Shared::PropertyConnectionCategories::ACCOUNTING,
    ],
    created_at=DateTime.iso8601('2021-09-01T18:42:56.636Z'),
    environment="string",
    external_xref="string",
    id="<ID>",
    integration_type="string",
    is_paused=false,
    permissions=.new[
      Shared::PropertyConnectionPermissions::CRM_DEAL_READ,
    ],
    updated_at=DateTime.iso8601('2021-08-21T06:44:42.952Z'),
    workspace_id="string",
  ),
)
    
res = s.connection.update_unified_connection(req)

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `id`                                                                 | *String*                                                             | :heavy_check_mark:                                                   | ID of the Connection                                                 |
| `connection`                                                         | [Shared::Connection](../../models/shared/connection.md)              | :heavy_minus_sign:                                                   | A connection represents a specific authentication of an integration. |


### Response

**[T.nilable(Operations::UpdateUnifiedConnectionResponse)](../../models/operations/updateunifiedconnectionresponse.md)**

