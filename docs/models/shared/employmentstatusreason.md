# EmploymentStatusReason

why the employee is not actively working (eg. LEAVE, TERMINATED, RETIRED)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = EmploymentStatusReason::LEAVE

# Open enum: use .deserialize() to create instances from custom string values
custom = EmploymentStatusReason.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `LEAVE`      | LEAVE        |
| `TERMINATED` | TERMINATED   |
| `RETIRED`    | RETIRED      |
| `DECEASED`   | DECEASED     |
| `DISABLED`   | DISABLED     |
| `OTHER`      | OTHER        |