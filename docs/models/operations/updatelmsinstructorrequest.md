# UpdateLmsInstructorRequest


## Fields

| Field                                                                 | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `lms_instructor`                                                      | [Models::Shared::LmsInstructor](../../models/shared/lmsinstructor.md) | :heavy_check_mark:                                                    | N/A                                                                   |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `fields_`                                                             | T::Array<*::String*>                                                  | :heavy_minus_sign:                                                    | Comma-delimited fields to return                                      |
| `id`                                                                  | *::String*                                                            | :heavy_check_mark:                                                    | ID of the Instructor                                                  |