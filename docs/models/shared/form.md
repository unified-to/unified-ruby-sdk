# Form

withholding form the values come from (eg. 2020+ W-4)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Form::W4_2020

# Open enum: use .deserialize() to create instances from custom string values
custom = Form.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `W4_2020`    | W4_2020      |
| `W4_LEGACY`  | W4_LEGACY    |
| `STATE_FORM` | STATE_FORM   |
| `TD1`        | TD1          |
| `OTHER`      | OTHER        |