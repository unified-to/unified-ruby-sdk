# PropertyShippingRateToAddress

Destination address


## Fields

| Field                                      | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `address1`                                 | *T.nilable(::String)*                      | :heavy_minus_sign:                         | N/A                                        |
| `address2`                                 | *T.nilable(::String)*                      | :heavy_minus_sign:                         | N/A                                        |
| `city`                                     | *T.nilable(::String)*                      | :heavy_minus_sign:                         | N/A                                        |
| `company_name`                             | *T.nilable(::String)*                      | :heavy_minus_sign:                         | Company name (for commercial addresses)    |
| `country`                                  | *T.nilable(::String)*                      | :heavy_minus_sign:                         | N/A                                        |
| `country_code`                             | *T.nilable(::String)*                      | :heavy_minus_sign:                         | ISO 2-digit country code                   |
| `delivery_instructions`                    | *T.nilable(::String)*                      | :heavy_minus_sign:                         | Special delivery notes                     |
| `email`                                    | *T.nilable(::String)*                      | :heavy_minus_sign:                         | Email address (for delivery notifications) |
| `is_residential`                           | *T.nilable(T::Boolean)*                    | :heavy_minus_sign:                         | Alias for address_type === 'RESIDENTIAL'   |
| `is_validated`                             | *T.nilable(T::Boolean)*                    | :heavy_minus_sign:                         | Whether address has been validated         |
| `name`                                     | *T.nilable(::String)*                      | :heavy_minus_sign:                         | Recipientsender name                       |
| `postal_code`                              | *T.nilable(::String)*                      | :heavy_minus_sign:                         | N/A                                        |
| `region`                                   | *T.nilable(::String)*                      | :heavy_minus_sign:                         | N/A                                        |
| `region_code`                              | *T.nilable(::String)*                      | :heavy_minus_sign:                         | N/A                                        |
| `telephone`                                | *T.nilable(::String)*                      | :heavy_minus_sign:                         | Phone number (required by FedEx, UPS, DHL) |