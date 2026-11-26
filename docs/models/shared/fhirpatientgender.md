# FhirPatientGender

male | female | other | unknown

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FhirPatientGender::MALE

# Open enum: use .deserialize() to create instances from custom string values
custom = FhirPatientGender.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `MALE`    | male      |
| `FEMALE`  | female    |
| `OTHER`   | other     |
| `UNKNOWN` | unknown   |