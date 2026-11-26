# DmsAppointmentService

A service requested on an appointment


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `complaint`                                                          | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | Customer's own words                                                 |
| `estimate_amount`                                                    | *T.nilable(::Float)*                                                 | :heavy_minus_sign:                                                   | Estimated price                                                      |
| `estimated_hours`                                                    | *T.nilable(::Float)*                                                 | :heavy_minus_sign:                                                   | N/A                                                                  |
| `id`                                                                 | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | Line identifier                                                      |
| `name`                                                               | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | Service or operation description                                     |
| `opcode_id`                                                          | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | The DmsOpcode ID                                                     |
| `pay_type`                                                           | [T.nilable(Models::Shared::PayType)](../../models/shared/paytype.md) | :heavy_minus_sign:                                                   | N/A                                                                  |
| `technician_user_ids`                                                | T::Array<*::String*>                                                 | :heavy_minus_sign:                                                   | Pre-assigned technicians, as HR Employees                            |