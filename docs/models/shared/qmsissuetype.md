# QmsIssueType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = QmsIssueType::NONCONFORMANCE

# Open enum: use .deserialize() to create instances from custom string values
custom = QmsIssueType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `NONCONFORMANCE` | NONCONFORMANCE   |
| `COMPLAINT`      | COMPLAINT        |
| `AUDIT_FINDING`  | AUDIT_FINDING    |
| `PROBLEM_REPORT` | PROBLEM_REPORT   |
| `OTHER`          | OTHER            |