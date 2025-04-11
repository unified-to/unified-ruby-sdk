# CreateLmsStudentRequest


## Fields

| Field                                                           | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `lms_student`                                                   | [Models::Shared::LmsStudent](../../models/shared/lmsstudent.md) | :heavy_check_mark:                                              | N/A                                                             |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |