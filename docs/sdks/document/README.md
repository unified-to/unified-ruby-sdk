# Document


### Available Operations

* [create_ats_document](#create_ats_document) - Create a document
* [get_ats_document](#get_ats_document) - Retrieve a document
* [list_ats_documents](#list_ats_documents) - List all documents
* [patch_ats_document](#patch_ats_document) - Update a document
* [remove_ats_document](#remove_ats_document) - Remove a document
* [update_ats_document](#update_ats_document) - Update a document

## create_ats_document

Create a document

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::CreateAtsDocumentRequest.new(
  path_params=Operations::CreateAtsDocumentRequest.new(
    connection_id="string",
    ats_document=Shared::AtsDocument.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2021-04-24T22:30:56.289Z'),
      document_data="string",
      document_url="string",
      filename="mouse_per_missouri.mp4",
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsDocumentRaw.new(),
      type=Shared::AtsDocumentType::OFFER_PACKET,
      updated_at=DateTime.iso8601('2021-12-28T09:27:32.859Z'),
      user_id="string",
    ),
  ),
  ats_document=Shared::AtsDocument.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2021-10-22T13:12:11.941Z'),
    document_data="string",
    document_url="string",
    filename="tcp.mp4",
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsDocumentRaw.new(),
    type=Shared::AtsDocumentType::RESUME,
    updated_at=DateTime.iso8601('2023-03-23T01:41:49.560Z'),
    user_id="string",
  ),
)
    
res = s.document.create_ats_document(req)

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `ats_document`                                            | [Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::CreateAtsDocumentResponse)](../../models/operations/createatsdocumentresponse.md)**


## get_ats_document

Retrieve a document

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::GetAtsDocumentRequest.new(
  path_params=Operations::GetAtsDocumentRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAtsDocumentRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.document.get_ats_document(req)

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Document               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAtsDocumentResponse)](../../models/operations/getatsdocumentresponse.md)**


## list_ats_documents

List all documents

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::ListAtsDocumentsRequest.new(
  path_params=Operations::ListAtsDocumentsRequest.new(
    application_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=9635.37,
    offset=8402.77,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-08-30T11:38:20.739Z'),
  ),
  query_params=Operations::ListAtsDocumentsRequest.new(
    application_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=9163.39,
    offset=1924.01,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-08-31T21:41:32.642Z'),
  ),
)
    
res = s.document.list_ats_documents(req)

if ! res.ats_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::ListAtsDocumentsRequest](../../models/operations/listatsdocumentsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::ListAtsDocumentsResponse)](../../models/operations/listatsdocumentsresponse.md)**


## patch_ats_document

Update a document

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::PatchAtsDocumentRequest.new(
  path_params=Operations::PatchAtsDocumentRequest.new(
    connection_id="string",
    id="<ID>",
    ats_document=Shared::AtsDocument.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2021-04-01T09:34:15.248Z'),
      document_data="string",
      document_url="string",
      filename="future_underpin.mp4v",
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsDocumentRaw.new(),
      type=Shared::AtsDocumentType::OFFER_LETTER,
      updated_at=DateTime.iso8601('2022-02-14T01:39:21.030Z'),
      user_id="string",
    ),
  ),
  ats_document=Shared::AtsDocument.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2023-08-12T20:41:57.042Z'),
    document_data="string",
    document_url="string",
    filename="turquoise_winds.gif",
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsDocumentRaw.new(),
    type=Shared::AtsDocumentType::TAKE_HOME_TEST,
    updated_at=DateTime.iso8601('2022-02-26T21:15:09.888Z'),
    user_id="string",
  ),
)
    
res = s.document.patch_ats_document(req)

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the Document                                        |
| `ats_document`                                            | [Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::PatchAtsDocumentResponse)](../../models/operations/patchatsdocumentresponse.md)**


## remove_ats_document

Remove a document

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::RemoveAtsDocumentRequest.new(
  path_params=Operations::RemoveAtsDocumentRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.document.remove_ats_document(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Document   |


### Response

**[T.nilable(Operations::RemoveAtsDocumentResponse)](../../models/operations/removeatsdocumentresponse.md)**


## update_ats_document

Update a document

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::UpdateAtsDocumentRequest.new(
  path_params=Operations::UpdateAtsDocumentRequest.new(
    connection_id="string",
    id="<ID>",
    ats_document=Shared::AtsDocument.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2021-07-05T13:01:49.006Z'),
      document_data="string",
      document_url="string",
      filename="unbranded_reprehenderit.jpg",
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsDocumentRaw.new(),
      type=Shared::AtsDocumentType::OFFER_PACKET,
      updated_at=DateTime.iso8601('2021-12-02T17:00:21.700Z'),
      user_id="string",
    ),
  ),
  ats_document=Shared::AtsDocument.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2022-02-01T02:34:13.751Z'),
    document_data="string",
    document_url="string",
    filename="customizable_soul.mpga",
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsDocumentRaw.new(),
    type=Shared::AtsDocumentType::OTHER,
    updated_at=DateTime.iso8601('2021-04-10T13:59:39.668Z'),
    user_id="string",
  ),
)
    
res = s.document.update_ats_document(req)

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the Document                                        |
| `ats_document`                                            | [Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::UpdateAtsDocumentResponse)](../../models/operations/updateatsdocumentresponse.md)**

