# Metric

The metric being reported

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Metric::FOLLOWERS

# Open enum: use .deserialize() to create instances from custom string values
custom = Metric.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `FOLLOWERS`     | FOLLOWERS       |
| `FOLLOWING`     | FOLLOWING       |
| `POSTS`         | POSTS           |
| `IMPRESSIONS`   | IMPRESSIONS     |
| `REACH`         | REACH           |
| `ENGAGEMENT`    | ENGAGEMENT      |
| `PROFILE_VIEWS` | PROFILE_VIEWS   |
| `CLICKS`        | CLICKS          |
| `VIDEO_VIEWS`   | VIDEO_VIEWS     |
| `LIKES`         | LIKES           |
| `COMMENTS`      | COMMENTS        |
| `SHARES`        | SHARES          |
| `SAVES`         | SAVES           |
| `OTHER`         | OTHER           |