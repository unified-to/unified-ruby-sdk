# Company


### Available Operations

* [create_crm_company](#create_crm_company) - Create a company
* [get_crm_company](#get_crm_company) - Retrieve a company
* [list_crm_companies](#list_crm_companies) - List all companies
* [list_enrich_companies](#list_enrich_companies) - Retrieve enrichment information for a company
* [patch_crm_company](#patch_crm_company) - Update a company
* [remove_crm_company](#remove_crm_company) - Remove a company
* [update_crm_company](#update_crm_company) - Update a company

## create_crm_company

Create a company

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::CreateCrmCompanyRequest.new(
  path_params=Operations::CreateCrmCompanyRequest.new(
    connection_id="string",
    crm_company=Shared::CrmCompany.new(
      address=Shared::PropertyCrmCompanyAddress.new(
        address1="string",
        address2="string",
        city="Joanieworth",
        country="Brazil",
        country_code="CW",
        postal_code="39571",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2023-02-02T17:21:10.729Z'),
      deal_ids=.new[
        "string",
      ],
      emails=.new[
        Shared::CrmEmail.new(
          email="Precious.Wehner@yahoo.com",
          type=Shared::CrmEmailType::HOME,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmCompanyRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::OTHER,
        ),
      ],
      updated_at=DateTime.iso8601('2022-07-18T18:29:25.490Z'),
      websites=.new[
        "string",
      ],
    ),
  ),
  crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(
      address1="string",
      address2="string",
      city="New Vivian",
      country="Mexico",
      country_code="IL",
      postal_code="22602",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2022-01-11T10:01:27.401Z'),
    deal_ids=.new[
      "string",
    ],
    emails=.new[
      Shared::CrmEmail.new(
        email="Reyna38@gmail.com",
        type=Shared::CrmEmailType::OTHER,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::HOME,
      ),
    ],
    updated_at=DateTime.iso8601('2023-04-26T09:26:51.310Z'),
    websites=.new[
      "string",
    ],
  ),
)
    
res = s.company.create_crm_company(req)

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *String*                                                                                       | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `crm_company`                                                                                  | [Shared::CrmCompany](../../models/shared/crmcompany.md)                                        | :heavy_minus_sign:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |


### Response

**[T.nilable(Operations::CreateCrmCompanyResponse)](../../models/operations/createcrmcompanyresponse.md)**


## get_crm_company

Retrieve a company

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::GetCrmCompanyRequest.new(
  path_params=Operations::GetCrmCompanyRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmCompanyRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.company.get_crm_company(req)

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Company                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmCompanyResponse)](../../models/operations/getcrmcompanyresponse.md)**


## list_crm_companies

List all companies

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::ListCrmCompaniesRequest.new(
  path_params=Operations::ListCrmCompaniesRequest.new(
    connection_id="string",
    contact_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=9883.97,
    offset=5913.88,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-05-02T07:12:37.628Z'),
  ),
  query_params=Operations::ListCrmCompaniesRequest.new(
    connection_id="string",
    contact_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=4931.86,
    offset=9358.58,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-01-24T17:35:02.685Z'),
  ),
)
    
res = s.company.list_crm_companies(req)

if ! res.crm_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::ListCrmCompaniesRequest](../../models/operations/listcrmcompaniesrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::ListCrmCompaniesResponse)](../../models/operations/listcrmcompaniesresponse.md)**


## list_enrich_companies

Retrieve enrichment information for a company

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::ListEnrichCompaniesRequest.new(
  path_params=Operations::ListEnrichCompaniesRequest.new(
    connection_id="string",
    domain="dismal-cornmeal.org",
    name="string",
  ),
  query_params=Operations::ListEnrichCompaniesRequest.new(
    connection_id="string",
    domain="impure-guava.org",
    name="string",
  ),
)
    
res = s.company.list_enrich_companies(req)

if ! res.enrich_company.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `connection_id`                     | *String*                            | :heavy_check_mark:                  | ID of the connection                |
| `domain`                            | *String*                            | :heavy_minus_sign:                  | The domain of the company to search |
| `name`                              | *String*                            | :heavy_minus_sign:                  | The name of the company to search   |


### Response

**[T.nilable(Operations::ListEnrichCompaniesResponse)](../../models/operations/listenrichcompaniesresponse.md)**


## patch_crm_company

Update a company

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::PatchCrmCompanyRequest.new(
  path_params=Operations::PatchCrmCompanyRequest.new(
    connection_id="string",
    id="<ID>",
    crm_company=Shared::CrmCompany.new(
      address=Shared::PropertyCrmCompanyAddress.new(
        address1="string",
        address2="string",
        city="Rempelchester",
        country="Christmas Island",
        country_code="LA",
        postal_code="53644",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2021-01-19T16:28:56.295Z'),
      deal_ids=.new[
        "string",
      ],
      emails=.new[
        Shared::CrmEmail.new(
          email="Leone.Schinner@gmail.com",
          type=Shared::CrmEmailType::WORK,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmCompanyRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::WORK,
        ),
      ],
      updated_at=DateTime.iso8601('2023-04-28T18:51:23.410Z'),
      websites=.new[
        "string",
      ],
    ),
  ),
  crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(
      address1="string",
      address2="string",
      city="Hilpertboro",
      country="Sweden",
      country_code="DK",
      postal_code="28028-7708",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2022-01-24T16:51:53.306Z'),
    deal_ids=.new[
      "string",
    ],
    emails=.new[
      Shared::CrmEmail.new(
        email="Shania14@hotmail.com",
        type=Shared::CrmEmailType::WORK,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::HOME,
      ),
    ],
    updated_at=DateTime.iso8601('2022-06-19T22:01:36.152Z'),
    websites=.new[
      "string",
    ],
  ),
)
    
res = s.company.patch_crm_company(req)

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *String*                                                                                       | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *String*                                                                                       | :heavy_check_mark:                                                                             | ID of the Company                                                                              |
| `crm_company`                                                                                  | [Shared::CrmCompany](../../models/shared/crmcompany.md)                                        | :heavy_minus_sign:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |


### Response

**[T.nilable(Operations::PatchCrmCompanyResponse)](../../models/operations/patchcrmcompanyresponse.md)**


## remove_crm_company

Remove a company

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::RemoveCrmCompanyRequest.new(
  path_params=Operations::RemoveCrmCompanyRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.company.remove_crm_company(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Company    |


### Response

**[T.nilable(Operations::RemoveCrmCompanyResponse)](../../models/operations/removecrmcompanyresponse.md)**


## update_crm_company

Update a company

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::UpdateCrmCompanyRequest.new(
  path_params=Operations::UpdateCrmCompanyRequest.new(
    connection_id="string",
    id="<ID>",
    crm_company=Shared::CrmCompany.new(
      address=Shared::PropertyCrmCompanyAddress.new(
        address1="string",
        address2="string",
        city="Margeshire",
        country="Bahrain",
        country_code="WS",
        postal_code="27563",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2022-06-18T22:28:27.597Z'),
      deal_ids=.new[
        "string",
      ],
      emails=.new[
        Shared::CrmEmail.new(
          email="Yasmine55@yahoo.com",
          type=Shared::CrmEmailType::HOME,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmCompanyRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::HOME,
        ),
      ],
      updated_at=DateTime.iso8601('2021-09-16T02:31:51.995Z'),
      websites=.new[
        "string",
      ],
    ),
  ),
  crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(
      address1="string",
      address2="string",
      city="Port Stephen",
      country="Netherlands Antilles",
      country_code="YT",
      postal_code="14844-8452",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2022-10-31T02:59:23.327Z'),
    deal_ids=.new[
      "string",
    ],
    emails=.new[
      Shared::CrmEmail.new(
        email="Winston36@hotmail.com",
        type=Shared::CrmEmailType::WORK,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::OTHER,
      ),
    ],
    updated_at=DateTime.iso8601('2023-04-09T07:26:09.162Z'),
    websites=.new[
      "string",
    ],
  ),
)
    
res = s.company.update_crm_company(req)

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *String*                                                                                       | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *String*                                                                                       | :heavy_check_mark:                                                                             | ID of the Company                                                                              |
| `crm_company`                                                                                  | [Shared::CrmCompany](../../models/shared/crmcompany.md)                                        | :heavy_minus_sign:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |


### Response

**[T.nilable(Operations::UpdateCrmCompanyResponse)](../../models/operations/updatecrmcompanyresponse.md)**

