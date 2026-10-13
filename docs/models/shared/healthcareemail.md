# HealthcareEmail


## Fields

| Field                                                                                        | Type                                                                                         | Required                                                                                     | Description                                                                                  |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| `email`                                                                                      | *::String*                                                                                   | :heavy_check_mark:                                                                           | The email address                                                                            |
| `type`                                                                                       | [T.nilable(Models::Shared::HealthcareEmailType)](../../models/shared/healthcareemailtype.md) | :heavy_minus_sign:                                                                           | The kind of email address (work, home or other)                                              |