# IssueStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = IssueStatus::COMPLETED

# Open enum: use .deserialize() to create instances from custom string values
custom = IssueStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `COMPLETED`   | COMPLETED     |
| `NEW`         | NEW           |
| `ROADMAP`     | ROADMAP       |
| `IN_PROGRESS` | IN_PROGRESS   |
| `ON_HOLD`     | ON_HOLD       |
| `VALIDATING`  | VALIDATING    |
| `REJECTED`    | REJECTED      |