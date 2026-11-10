# HrisTaxonomyType

the kind of taxonomy item: skill, knowledge, competence, ability, certification or role/occupation

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HrisTaxonomyType::SKILL

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisTaxonomyType.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `SKILL`         | SKILL           |
| `KNOWLEDGE`     | KNOWLEDGE       |
| `COMPETENCE`    | COMPETENCE      |
| `ABILITY`       | ABILITY         |
| `CERTIFICATION` | CERTIFICATION   |
| `ROLE`          | ROLE            |
| `HOLIDAY`       | HOLIDAY         |
| `LEAVE`         | LEAVE           |