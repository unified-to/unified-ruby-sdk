# ComputeEndpoint


## Fields

| Field                                                                  | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `is_auth_required`                                                     | *T.nilable(T::Boolean)*                                                | :heavy_minus_sign:                                                     | Whether the URL requires a vendor access token                         |
| `port`                                                                 | *T.nilable(::Float)*                                                   | :heavy_minus_sign:                                                     | The port inside the instance                                           |
| `protocol`                                                             | [T.nilable(Models::Shared::Protocol)](../../models/shared/protocol.md) | :heavy_minus_sign:                                                     | The protocol served on this port                                       |
| `url`                                                                  | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | Public or proxied URL for this port                                    |