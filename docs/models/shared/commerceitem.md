# CommerceItem


## Fields

| Field                                                                                                 | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `created_at`                                                                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                  | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `description`                                                                                         | *T.nilable(::String)*                                                                                 | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `id`                                                                                                  | *T.nilable(::String)*                                                                                 | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `is_active`                                                                                           | *T.nilable(T::Boolean)*                                                                               | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `is_taxable`                                                                                          | *T.nilable(T::Boolean)*                                                                               | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `media`                                                                                               | T::Array<[::UnifiedRubySDK::Shared::CommerceItemMedia](../../models/shared/commerceitemmedia.md)>     | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `name`                                                                                                | *::String*                                                                                            | :heavy_check_mark:                                                                                    | N/A                                                                                                   |
| `public_description`                                                                                  | *T.nilable(::String)*                                                                                 | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `public_name`                                                                                         | *T.nilable(::String)*                                                                                 | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `raw`                                                                                                 | T::Hash[Symbol, *::Object*]                                                                           | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `tags`                                                                                                | T::Array<*::String*>                                                                                  | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `type`                                                                                                | *T.nilable(::String)*                                                                                 | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `updated_at`                                                                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                  | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |
| `variants`                                                                                            | T::Array<[::UnifiedRubySDK::Shared::CommerceItemVariant](../../models/shared/commerceitemvariant.md)> | :heavy_minus_sign:                                                                                    | first variant is the default variant                                                                  |
| `vendor_name`                                                                                         | *T.nilable(::String)*                                                                                 | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |