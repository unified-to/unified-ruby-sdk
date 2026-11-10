# AssessmentPackageType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AssessmentPackageType::SKILLS_TEST

# Open enum: use .deserialize() to create instances from custom string values
custom = AssessmentPackageType.deserialize("custom_value")
```


## Values

| Name                    | Value                   |
| ----------------------- | ----------------------- |
| `SKILLS_TEST`           | SKILLS_TEST             |
| `BEHAVIORAL_ASSESSMENT` | BEHAVIORAL_ASSESSMENT   |
| `VIDEO_INTERVIEW`       | VIDEO_INTERVIEW         |
| `BACKGROUND_CHECK`      | BACKGROUND_CHECK        |
| `REFERENCE_CHECK`       | REFERENCE_CHECK         |
| `OTHER`                 | OTHER                   |