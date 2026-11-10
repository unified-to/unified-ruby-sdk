# LabelFormat

Format of the label (PDF, PNG, ZPL, EPL2)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = LabelFormat::PDF

# Open enum: use .deserialize() to create instances from custom string values
custom = LabelFormat.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `PDF`      | PDF        |
| `PNG`      | PNG        |
| `ZPL`      | ZPL        |
| `EPL2`     | EPL2       |
| `PDF_4_X6` | PDF_4X6    |
| `PDF_4_X8` | PDF_4X8    |
| `PNG_4_X6` | PNG_4X6    |
| `PNG_4_X8` | PNG_4X8    |