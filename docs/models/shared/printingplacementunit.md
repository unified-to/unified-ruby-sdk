# PrintingPlacementUnit

Unit of `width` and `height`

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PrintingPlacementUnit::PIXEL

# Open enum: use .deserialize() to create instances from custom string values
custom = PrintingPlacementUnit.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `PIXEL`      | PIXEL        |
| `MILLIMETER` | MILLIMETER   |
| `CENTIMETER` | CENTIMETER   |
| `INCH`       | INCH         |
| `OTHER`      | OTHER        |