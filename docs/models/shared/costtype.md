# CostType

How the line item is priced (Google Ad Manager costType)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CostType::CPM

# Open enum: use .deserialize() to create instances from custom string values
custom = CostType.deserialize("custom_value")
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `CPM`          | CPM            |
| `VIEWABLE_CPM` | VIEWABLE_CPM   |
| `CPC`          | CPC            |
| `CPD`          | CPD            |
| `CPA`          | CPA            |
| `CPCV`         | CPCV           |
| `OTHER`        | OTHER          |