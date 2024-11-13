# CreateLmsStudentRequest


## Fields

| Field                                                                                | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `connection_id`                                                                      | *::String*                                                                           | :heavy_check_mark:                                                                   | ID of the connection                                                                 |
| `lms_student`                                                                        | [T.nilable(::UnifiedRubySDK::Shared::LmsStudent)](../../models/shared/lmsstudent.md) | :heavy_minus_sign:                                                                   | N/A                                                                                  |
| `fields_`                                                                            | T::Array<*::String*>                                                                 | :heavy_minus_sign:                                                                   | Comma-delimited fields to return                                                     |