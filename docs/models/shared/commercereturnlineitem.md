# CommerceReturnLineitem


## Fields

| Field                       | Type                        | Required                    | Description                 |
| --------------------------- | --------------------------- | --------------------------- | --------------------------- |
| `id`                        | *T.nilable(::String)*       | :heavy_minus_sign:          | N/A                         |
| `item_id`                   | *T.nilable(::String)*       | :heavy_minus_sign:          | (reference to CommerceItem) |
| `name`                      | *T.nilable(::String)*       | :heavy_minus_sign:          | N/A                         |
| `order_line_id`             | *T.nilable(::String)*       | :heavy_minus_sign:          | N/A                         |
| `quantity`                  | *T.nilable(::Float)*        | :heavy_minus_sign:          | N/A                         |
| `raw`                       | T::Hash[Symbol, *::Object*] | :heavy_minus_sign:          | N/A                         |
| `reason`                    | *T.nilable(::String)*       | :heavy_minus_sign:          | N/A                         |
| `refund_amount`             | *T.nilable(::Float)*        | :heavy_minus_sign:          | N/A                         |
| `sku`                       | *T.nilable(::String)*       | :heavy_minus_sign:          | N/A                         |
| `status`                    | *T.nilable(::String)*       | :heavy_minus_sign:          | N/A                         |