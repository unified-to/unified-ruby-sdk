# ComputeDeploymentStatus

Normalized deployment status; set to CANCELED on update to cancel

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeDeploymentStatus::QUEUED

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeDeploymentStatus.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `QUEUED`     | QUEUED       |
| `BUILDING`   | BUILDING     |
| `DEPLOYING`  | DEPLOYING    |
| `LIVE`       | LIVE         |
| `FAILED`     | FAILED       |
| `CANCELED`   | CANCELED     |
| `SUPERSEDED` | SUPERSEDED   |
| `OTHER`      | OTHER        |