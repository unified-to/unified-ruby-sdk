# DbType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = DbType::MONGODB

# Open enum: use .deserialize() to create instances from custom string values
custom = DbType.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `MONGODB`   | mongodb     |
| `MYSQL`     | mysql       |
| `POSTGRES`  | postgres    |
| `MSSQL`     | mssql       |
| `MARIADB`   | mariadb     |
| `SUPABASE`  | supabase    |
| `SNOWFLAKE` | snowflake   |