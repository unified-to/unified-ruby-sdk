# PatchCrmCompanyResponse


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `content_type`                                                              | *::String*                                                                  | :heavy_check_mark:                                                          | HTTP response content type for this operation                               |
| `crm_company`                                                               | [T.nilable(Models::Shared::CrmCompany)](../../models/shared/crmcompany.md)  | :heavy_minus_sign:                                                          | Successful                                                                  |
| `status_code`                                                               | *::Integer*                                                                 | :heavy_check_mark:                                                          | HTTP response status code for this operation                                |
| `raw_response`                                                              | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response) | :heavy_check_mark:                                                          | Raw HTTP response; suitable for custom response parsing                     |