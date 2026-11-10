# ComputeInstanceStatus

Normalized lifecycle status; set on update to start, stop, pause, resume, restart or terminate

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeInstanceStatus::PROVISIONING

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeInstanceStatus.deserialize("custom_value")
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `PROVISIONING` | PROVISIONING   |
| `STARTING`     | STARTING       |
| `RUNNING`      | RUNNING        |
| `STOPPING`     | STOPPING       |
| `STOPPED`      | STOPPED        |
| `PAUSING`      | PAUSING        |
| `PAUSED`       | PAUSED         |
| `RESUMING`     | RESUMING       |
| `RESTARTING`   | RESTARTING     |
| `TERMINATING`  | TERMINATING    |
| `TERMINATED`   | TERMINATED     |
| `PREEMPTED`    | PREEMPTED      |
| `ERROR`        | ERROR          |
| `OTHER`        | OTHER          |