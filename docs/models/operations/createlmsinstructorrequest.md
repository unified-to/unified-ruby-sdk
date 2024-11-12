# CreateLmsInstructorRequest


## Fields

| Field                                                                                      | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `connection_id`                                                                            | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the connection                                                                       |
| `lms_instructor`                                                                           | [T.nilable(::UnifiedRubySDK::Shared::LmsInstructor)](../../models/shared/lmsinstructor.md) | :heavy_minus_sign:                                                                         | N/A                                                                                        |
| `fields_`                                                                                  | T::Array<*::String*>                                                                       | :heavy_minus_sign:                                                                         | Comma-delimited fields to return                                                           |