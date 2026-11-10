# HealthcareEncounterType

Class of the encounter (e.g. ambulatory, inpatient)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareEncounterType::AMBULATORY

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareEncounterType.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `AMBULATORY`  | AMBULATORY    |
| `EMERGENCY`   | EMERGENCY     |
| `INPATIENT`   | INPATIENT     |
| `OBSERVATION` | OBSERVATION   |
| `HOME_HEALTH` | HOME_HEALTH   |
| `VIRTUAL`     | VIRTUAL       |
| `OTHER`       | OTHER         |