# AccountingCategoryType

The kind of dimension

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingCategoryType::CLASS

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingCategoryType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `CLASS`      | CLASS        |
| `DEPARTMENT` | DEPARTMENT   |
| `LOCATION`   | LOCATION     |
| `PROJECT`    | PROJECT      |
| `TASK`       | TASK         |
| `CUSTOM`     | CUSTOM       |
| `EXPENSE`    | EXPENSE      |
| `INCOME`     | INCOME       |