# CoverageLevel

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CoverageLevel::EMPLOYEE_ONLY

# Open enum: use .deserialize() to create instances from custom string values
custom = CoverageLevel.deserialize("custom_value")
```


## Values

| Name                | Value               |
| ------------------- | ------------------- |
| `EMPLOYEE_ONLY`     | EMPLOYEE_ONLY       |
| `EMPLOYEE_SPOUSE`   | EMPLOYEE_SPOUSE     |
| `EMPLOYEE_CHILD`    | EMPLOYEE_CHILD      |
| `EMPLOYEE_CHILDREN` | EMPLOYEE_CHILDREN   |
| `EMPLOYEE_FAMILY`   | EMPLOYEE_FAMILY     |
| `FAMILY`            | FAMILY              |
| `OTHER`             | OTHER               |