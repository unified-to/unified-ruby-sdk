# Compute
(*compute*)

## Overview

### Available Operations

* [create_compute_deployment](#create_compute_deployment) - Create a deployment
* [create_compute_domain](#create_compute_domain) - Create a domain
* [create_compute_envvar](#create_compute_envvar) - Create an envvar
* [create_compute_instance](#create_compute_instance) - Create an instance
* [create_compute_key](#create_compute_key) - Create a key
* [create_compute_service](#create_compute_service) - Create a service
* [create_compute_snapshot](#create_compute_snapshot) - Create a snapshot
* [create_compute_template](#create_compute_template) - Create a template
* [create_compute_volume](#create_compute_volume) - Create a volume
* [get_compute_deployment](#get_compute_deployment) - Retrieve a deployment
* [get_compute_domain](#get_compute_domain) - Retrieve a domain
* [get_compute_envvar](#get_compute_envvar) - Retrieve an envvar
* [get_compute_gputype](#get_compute_gputype) - Retrieve a gputype
* [get_compute_instance](#get_compute_instance) - Retrieve an instance
* [get_compute_key](#get_compute_key) - Retrieve a key
* [get_compute_region](#get_compute_region) - Retrieve a region
* [get_compute_service](#get_compute_service) - Retrieve a service
* [get_compute_snapshot](#get_compute_snapshot) - Retrieve a snapshot
* [get_compute_template](#get_compute_template) - Retrieve a template
* [get_compute_volume](#get_compute_volume) - Retrieve a volume
* [list_compute_deployments](#list_compute_deployments) - List all deployments
* [list_compute_domains](#list_compute_domains) - List all domains
* [list_compute_envvars](#list_compute_envvars) - List all envvars
* [list_compute_gputypes](#list_compute_gputypes) - List all gputypes
* [list_compute_instances](#list_compute_instances) - List all instances
* [list_compute_keys](#list_compute_keys) - List all keys
* [list_compute_regions](#list_compute_regions) - List all regions
* [list_compute_services](#list_compute_services) - List all services
* [list_compute_snapshots](#list_compute_snapshots) - List all snapshots
* [list_compute_templates](#list_compute_templates) - List all templates
* [list_compute_usages](#list_compute_usages) - List all usages
* [list_compute_volumes](#list_compute_volumes) - List all volumes
* [patch_compute_deployment](#patch_compute_deployment) - Update a deployment
* [patch_compute_domain](#patch_compute_domain) - Update a domain
* [patch_compute_envvar](#patch_compute_envvar) - Update an envvar
* [patch_compute_instance](#patch_compute_instance) - Update an instance
* [patch_compute_key](#patch_compute_key) - Update a key
* [patch_compute_service](#patch_compute_service) - Update a service
* [patch_compute_template](#patch_compute_template) - Update a template
* [patch_compute_volume](#patch_compute_volume) - Update a volume
* [remove_compute_deployment](#remove_compute_deployment) - Remove a deployment
* [remove_compute_domain](#remove_compute_domain) - Remove a domain
* [remove_compute_envvar](#remove_compute_envvar) - Remove an envvar
* [remove_compute_instance](#remove_compute_instance) - Remove an instance
* [remove_compute_key](#remove_compute_key) - Remove a key
* [remove_compute_service](#remove_compute_service) - Remove a service
* [remove_compute_snapshot](#remove_compute_snapshot) - Remove a snapshot
* [remove_compute_template](#remove_compute_template) - Remove a template
* [remove_compute_volume](#remove_compute_volume) - Remove a volume
* [update_compute_deployment](#update_compute_deployment) - Update a deployment
* [update_compute_domain](#update_compute_domain) - Update a domain
* [update_compute_envvar](#update_compute_envvar) - Update an envvar
* [update_compute_instance](#update_compute_instance) - Update an instance
* [update_compute_key](#update_compute_key) - Update a key
* [update_compute_service](#update_compute_service) - Update a service
* [update_compute_template](#update_compute_template) - Update a template
* [update_compute_volume](#update_compute_volume) - Update a volume

## create_compute_deployment

Create a deployment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeDeployment" method="post" path="/compute/{connection_id}/deployment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.create_compute_deployment(compute_deployment: Models::Shared::ComputeDeployment.new(
  branch: 'develop',
  commit_identifier: 'fadfe54eefd8fea670bea6d58b4b15d406c4b02b',
  commit_message: 'copy primary pixel',
  created_at: DateTime.iso8601('2022-06-07T03:52:04.613Z'),
  environment: Models::Shared::Environment::PREVIEW,
  finished_at: DateTime.iso8601('2025-08-22T21:30:41.314Z'),
  id: 'ce276d80-b8dc-47a6-b6ad-675fc298c358',
  metadata: [],
  started_at: DateTime.iso8601('2025-04-04T09:16:39.133Z'),
  status: Models::Shared::ComputeDeploymentStatus::LIVE,
  trigger: Models::Shared::Trigger::API,
  updated_at: DateTime.iso8601('2026-02-20T23:22:47.256Z'),
  url: 'https://comfortable-petal.name',
), connection_id: '<id>')

unless res.compute_deployment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_deployment`                                                                                                                             | [Models::Shared::ComputeDeployment](../../models/shared/computedeployment.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeDeploymentQueryParamFields](../../models/operations/createcomputedeploymentqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeDeploymentResponse)](../../models/operations/createcomputedeploymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_compute_domain

Create a domain

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeDomain" method="post" path="/compute/{connection_id}/domain" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.create_compute_domain(compute_domain: Models::Shared::ComputeDomain.new(
  created_at: DateTime.iso8601('2019-11-22T16:38:26.009Z'),
  id: '29971ac6-d1cd-478a-b9f5-fe10ef8bdf1a',
  is_primary: false,
  name: 'mysterious-republican.usable-section.info',
  status: Models::Shared::ComputeDomainStatus::PENDING,
  updated_at: DateTime.iso8601('2023-10-29T10:14:02.185Z'),
), connection_id: '<id>')

unless res.compute_domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_domain`                                                                                                                                 | [Models::Shared::ComputeDomain](../../models/shared/computedomain.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeDomainQueryParamFields](../../models/operations/createcomputedomainqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeDomainResponse)](../../models/operations/createcomputedomainresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_compute_envvar

Create an envvar

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeEnvvar" method="post" path="/compute/{connection_id}/envvar" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.create_compute_envvar(compute_envvar: Models::Shared::ComputeEnvvar.new(
  created_at: DateTime.iso8601('2021-08-16T07:52:27.306Z'),
  environments: [
    Models::Shared::PropertyComputeEnvvarEnvironments::PREVIEW,
  ],
  id: '2ad84bbe-d82c-40eb-869a-d76a10898859',
  is_secret: true,
  name: 'AEGER_SUBSTANTIA',
  updated_at: DateTime.iso8601('2025-06-26T18:27:58.105Z'),
), connection_id: '<id>')

unless res.compute_envvar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_envvar`                                                                                                                                 | [Models::Shared::ComputeEnvvar](../../models/shared/computeenvvar.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeEnvvarQueryParamFields](../../models/operations/createcomputeenvvarqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeEnvvarResponse)](../../models/operations/createcomputeenvvarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_compute_instance

Create an instance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeInstance" method="post" path="/compute/{connection_id}/instance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.create_compute_instance(compute_instance: Models::Shared::ComputeInstance.new(
  allowed_actions: [
    Models::Shared::PropertyComputeInstanceAllowedActions::TERMINATE,
  ],
  architecture: Models::Shared::ComputeInstanceArchitecture::OTHER,
  cpu_count: 8.0,
  created_at: DateTime.iso8601('2022-10-07T14:18:53.874Z'),
  currency: 'USD',
  disk_mb: 1_024_000.0,
  endpoints: [
    Models::Shared::ComputeEndpoint.new(
      is_auth_required: true,
      port: 8080.0,
      protocol: Models::Shared::Protocol::HTTPS,
      url: 'https://serene-shark.biz/',
    ),
  ],
  gpu_count: 0.0,
  has_internet_access: true,
  id: '22a93c44-a80e-4aae-9d05-2dc3c8c9d38d',
  image: 'ubuntu:24.04',
  market: Models::Shared::Market::SPOT,
  memory_mb: 2048.0,
  metadata: [],
  name: 'digital-panel',
  on_idle: Models::Shared::OnIdle::TERMINATE,
  price_amount: 24.90_336_107_776_966,
  price_unit: Models::Shared::PriceUnit::PER_INSTANCE_HOUR,
  project_identifier: 'g547KrivqY',
  ssh: Models::Shared::PropertyComputeInstanceSsh.new(
    host: '116.42.165.89',
    port: 22.0,
    username: 'root',
  ),
  started_at: DateTime.iso8601('2025-03-18T10:00:21.595Z'),
  status: Models::Shared::ComputeInstanceStatus::ERROR,
  status_reason: 'Sponte quasi adversus alioqui reiciendis arca carmen canis.',
  type: Models::Shared::ComputeInstanceType::BAREMETAL,
  updated_at: DateTime.iso8601('2025-06-10T03:03:03.038Z'),
), connection_id: '<id>')

unless res.compute_instance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_instance`                                                                                                                               | [Models::Shared::ComputeInstance](../../models/shared/computeinstance.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeInstanceQueryParamFields](../../models/operations/createcomputeinstancequeryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeInstanceResponse)](../../models/operations/createcomputeinstanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_compute_key

Create a key

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeKey" method="post" path="/compute/{connection_id}/key" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.create_compute_key(compute_key: Models::Shared::ComputeKey.new(
  created_at: DateTime.iso8601('2023-08-19T14:31:46.492Z'),
  id: 'fabada70-f526-4fcc-9e2e-856955bf2364',
  name: 'nienow-secret',
  type: Models::Shared::ComputeKeyType::SECRET,
  updated_at: DateTime.iso8601('2024-10-03T17:05:27.774Z'),
), connection_id: '<id>')

unless res.compute_key.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_key`                                                                                                                                    | [Models::Shared::ComputeKey](../../models/shared/computekey.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeKeyQueryParamFields](../../models/operations/createcomputekeyqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeKeyResponse)](../../models/operations/createcomputekeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_compute_service

Create a service

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeService" method="post" path="/compute/{connection_id}/service" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.create_compute_service(compute_service: Models::Shared::ComputeService.new(
  branch: 'main',
  build_command: 'npm run build',
  created_at: DateTime.iso8601('2023-10-04T02:06:29.391Z'),
  id: '11bb87b4-49eb-4f17-801c-9cb3b625b800',
  instance_count: 6.0,
  max_instance_count: 6.0,
  metadata: [],
  min_instance_count: 1.0,
  name: 'tame-sideboard',
  project_identifier: '4nyWICvPfi',
  repo_url: 'https://github.com/Kimberly_Muller95/tame-sideboard',
  runtime: 'python',
  status: Models::Shared::ComputeServiceStatus::SUSPENDED,
  type: Models::Shared::ComputeServiceType::OTHER,
  updated_at: DateTime.iso8601('2025-03-31T04:40:06.731Z'),
  url: 'https://tame-sideboard.rotating-shoulder.biz',
), connection_id: '<id>')

unless res.compute_service.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_service`                                                                                                                                | [Models::Shared::ComputeService](../../models/shared/computeservice.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeServiceQueryParamFields](../../models/operations/createcomputeservicequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeServiceResponse)](../../models/operations/createcomputeserviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_compute_snapshot

Create a snapshot

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeSnapshot" method="post" path="/compute/{connection_id}/snapshot" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.create_compute_snapshot(compute_snapshot: Models::Shared::ComputeSnapshot.new(
  created_at: DateTime.iso8601('2021-09-24T14:40:06.110Z'),
  id: '4b873615-b3cc-4b7c-9182-77d907417605',
  metadata: [],
  name: 'snap-alius',
  size_mb: 169_984.0,
  status: Models::Shared::ComputeSnapshotStatus::DELETING,
  type: Models::Shared::ComputeSnapshotType::DISK,
  updated_at: DateTime.iso8601('2026-03-22T18:44:48.479Z'),
), connection_id: '<id>')

unless res.compute_snapshot.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_snapshot`                                                                                                                               | [Models::Shared::ComputeSnapshot](../../models/shared/computesnapshot.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeSnapshotQueryParamFields](../../models/operations/createcomputesnapshotqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeSnapshotResponse)](../../models/operations/createcomputesnapshotresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_compute_template

Create a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeTemplate" method="post" path="/compute/{connection_id}/template" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.create_compute_template(compute_template: Models::Shared::ComputeTemplate.new(
  cpu_count: 4.0,
  created_at: DateTime.iso8601('2023-02-23T03:28:59.864Z'),
  disk_mb: 10_240.0,
  dockerfile: 'FROM ubuntu:24.04\n" +
  "RUN apt-get update',
  gpu_count: 2.0,
  gpu_model: Models::Shared::ComputeTemplateGpuModel::NVIDIA_GH200,
  id: '6081e4e3-9d5a-4372-a36c-3080368e5ee0',
  image: 'perfumed-molasses/cohibeo:5.2',
  is_public: false,
  last_used_at: DateTime.iso8601('2026-03-16T04:16:01.065Z'),
  memory_mb: 8192.0,
  metadata: [],
  name: 'multi-byte-card',
  ports: [
    8080.0,
  ],
  status: Models::Shared::ComputeTemplateStatus::OTHER,
  updated_at: DateTime.iso8601('2025-02-07T20:38:00.393Z'),
), connection_id: '<id>')

unless res.compute_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_template`                                                                                                                               | [Models::Shared::ComputeTemplate](../../models/shared/computetemplate.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeTemplateQueryParamFields](../../models/operations/createcomputetemplatequeryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeTemplateResponse)](../../models/operations/createcomputetemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_compute_volume

Create a volume

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeVolume" method="post" path="/compute/{connection_id}/volume" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.create_compute_volume(compute_volume: Models::Shared::ComputeVolume.new(
  created_at: DateTime.iso8601('2022-11-15T15:12:48.055Z'),
  id: '2408918e-d83a-440c-9a52-c2fdbb80b001',
  instance_ids: [],
  metadata: [],
  name: 'vol-solum',
  size_mb: 1_024_000.0,
  status: Models::Shared::ComputeVolumeStatus::OTHER,
  type: Models::Shared::ComputeVolumeType::HIGH_PERFORMANCE,
  updated_at: DateTime.iso8601('2024-02-07T01:04:26.218Z'),
  used_mb: 524_986.0,
), connection_id: '<id>')

unless res.compute_volume.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_volume`                                                                                                                                 | [Models::Shared::ComputeVolume](../../models/shared/computevolume.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeVolumeQueryParamFields](../../models/operations/createcomputevolumequeryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeVolumeResponse)](../../models/operations/createcomputevolumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_deployment

Retrieve a deployment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeDeployment" method="get" path="/compute/{connection_id}/deployment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_deployment(connection_id: '<id>', id: '<id>')

unless res.compute_deployment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Deployment                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeDeploymentQueryParamFields](../../models/operations/getcomputedeploymentqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeDeploymentResponse)](../../models/operations/getcomputedeploymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_domain

Retrieve a domain

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeDomain" method="get" path="/compute/{connection_id}/domain/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_domain(connection_id: '<id>', id: '<id>')

unless res.compute_domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Domain                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeDomainQueryParamFields](../../models/operations/getcomputedomainqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeDomainResponse)](../../models/operations/getcomputedomainresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_envvar

Retrieve an envvar

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeEnvvar" method="get" path="/compute/{connection_id}/envvar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_envvar(connection_id: '<id>', id: '<id>')

unless res.compute_envvar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Envvar                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeEnvvarQueryParamFields](../../models/operations/getcomputeenvvarqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeEnvvarResponse)](../../models/operations/getcomputeenvvarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_gputype

Retrieve a gputype

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeGputype" method="get" path="/compute/{connection_id}/gputype/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_gputype(connection_id: '<id>', id: '<id>')

unless res.compute_gputype.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Gputype                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeGputypeQueryParamFields](../../models/operations/getcomputegputypequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeGputypeResponse)](../../models/operations/getcomputegputyperesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_instance

Retrieve an instance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeInstance" method="get" path="/compute/{connection_id}/instance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_instance(connection_id: '<id>', id: '<id>')

unless res.compute_instance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Instance                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeInstanceQueryParamFields](../../models/operations/getcomputeinstancequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeInstanceResponse)](../../models/operations/getcomputeinstanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_key

Retrieve a key

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeKey" method="get" path="/compute/{connection_id}/key/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_key(connection_id: '<id>', id: '<id>')

unless res.compute_key.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Key                                                                                                                                    |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeKeyQueryParamFields](../../models/operations/getcomputekeyqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeKeyResponse)](../../models/operations/getcomputekeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_region

Retrieve a region

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeRegion" method="get" path="/compute/{connection_id}/region/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_region(connection_id: '<id>', id: '<id>')

unless res.compute_region.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Region                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeRegionQueryParamFields](../../models/operations/getcomputeregionqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeRegionResponse)](../../models/operations/getcomputeregionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_service

Retrieve a service

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeService" method="get" path="/compute/{connection_id}/service/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_service(connection_id: '<id>', id: '<id>')

unless res.compute_service.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Service                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeServiceQueryParamFields](../../models/operations/getcomputeservicequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeServiceResponse)](../../models/operations/getcomputeserviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_snapshot

Retrieve a snapshot

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeSnapshot" method="get" path="/compute/{connection_id}/snapshot/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_snapshot(connection_id: '<id>', id: '<id>')

unless res.compute_snapshot.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Snapshot                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeSnapshotQueryParamFields](../../models/operations/getcomputesnapshotqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeSnapshotResponse)](../../models/operations/getcomputesnapshotresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_template

Retrieve a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeTemplate" method="get" path="/compute/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_template(connection_id: '<id>', id: '<id>')

unless res.compute_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Template                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeTemplateQueryParamFields](../../models/operations/getcomputetemplatequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeTemplateResponse)](../../models/operations/getcomputetemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_volume

Retrieve a volume

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeVolume" method="get" path="/compute/{connection_id}/volume/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.get_compute_volume(connection_id: '<id>', id: '<id>')

unless res.compute_volume.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Volume                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeVolumeQueryParamFields](../../models/operations/getcomputevolumequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeVolumeResponse)](../../models/operations/getcomputevolumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_deployments

List all deployments

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeDeployments" method="get" path="/compute/{connection_id}/deployment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeDeploymentsRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_deployments(request: req)

unless res.compute_deployments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListComputeDeploymentsRequest](../../models/operations/listcomputedeploymentsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListComputeDeploymentsResponse)](../../models/operations/listcomputedeploymentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_domains

List all domains

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeDomains" method="get" path="/compute/{connection_id}/domain" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeDomainsRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_domains(request: req)

unless res.compute_domains.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListComputeDomainsRequest](../../models/operations/listcomputedomainsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListComputeDomainsResponse)](../../models/operations/listcomputedomainsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_envvars

List all envvars

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeEnvvars" method="get" path="/compute/{connection_id}/envvar" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeEnvvarsRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_envvars(request: req)

unless res.compute_envvars.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListComputeEnvvarsRequest](../../models/operations/listcomputeenvvarsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListComputeEnvvarsResponse)](../../models/operations/listcomputeenvvarsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_gputypes

List all gputypes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeGputypes" method="get" path="/compute/{connection_id}/gputype" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeGputypesRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_gputypes(request: req)

unless res.compute_gputypes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListComputeGputypesRequest](../../models/operations/listcomputegputypesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListComputeGputypesResponse)](../../models/operations/listcomputegputypesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_instances

List all instances

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeInstances" method="get" path="/compute/{connection_id}/instance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeInstancesRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_instances(request: req)

unless res.compute_instances.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListComputeInstancesRequest](../../models/operations/listcomputeinstancesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListComputeInstancesResponse)](../../models/operations/listcomputeinstancesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_keys

List all keys

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeKeys" method="get" path="/compute/{connection_id}/key" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeKeysRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_keys(request: req)

unless res.compute_keys.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListComputeKeysRequest](../../models/operations/listcomputekeysrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListComputeKeysResponse)](../../models/operations/listcomputekeysresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_regions

List all regions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeRegions" method="get" path="/compute/{connection_id}/region" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeRegionsRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_regions(request: req)

unless res.compute_regions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListComputeRegionsRequest](../../models/operations/listcomputeregionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListComputeRegionsResponse)](../../models/operations/listcomputeregionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_services

List all services

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeServices" method="get" path="/compute/{connection_id}/service" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeServicesRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_services(request: req)

unless res.compute_services.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListComputeServicesRequest](../../models/operations/listcomputeservicesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListComputeServicesResponse)](../../models/operations/listcomputeservicesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_snapshots

List all snapshots

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeSnapshots" method="get" path="/compute/{connection_id}/snapshot" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeSnapshotsRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_snapshots(request: req)

unless res.compute_snapshots.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListComputeSnapshotsRequest](../../models/operations/listcomputesnapshotsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListComputeSnapshotsResponse)](../../models/operations/listcomputesnapshotsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_templates

List all templates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeTemplates" method="get" path="/compute/{connection_id}/template" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeTemplatesRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_templates(request: req)

unless res.compute_templates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListComputeTemplatesRequest](../../models/operations/listcomputetemplatesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListComputeTemplatesResponse)](../../models/operations/listcomputetemplatesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_usages

List all usages

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeUsages" method="get" path="/compute/{connection_id}/usage" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeUsagesRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_usages(request: req)

unless res.compute_usages.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListComputeUsagesRequest](../../models/operations/listcomputeusagesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListComputeUsagesResponse)](../../models/operations/listcomputeusagesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_volumes

List all volumes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeVolumes" method="get" path="/compute/{connection_id}/volume" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeVolumesRequest.new(
  connection_id: '<id>',
)

res = s.compute.list_compute_volumes(request: req)

unless res.compute_volumes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListComputeVolumesRequest](../../models/operations/listcomputevolumesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListComputeVolumesResponse)](../../models/operations/listcomputevolumesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_deployment

Update a deployment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeDeployment" method="patch" path="/compute/{connection_id}/deployment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeDeploymentRequest.new(
  compute_deployment: Models::Shared::ComputeDeployment.new(
    branch: 'develop',
    commit_identifier: 'fadfe54eefd8fea670bea6d58b4b15d406c4b02b',
    commit_message: 'copy primary pixel',
    created_at: DateTime.iso8601('2022-06-07T03:52:04.613Z'),
    environment: Models::Shared::Environment::PREVIEW,
    finished_at: DateTime.iso8601('2025-08-22T21:30:41.331Z'),
    id: '3bfe8d6d-2e62-47d4-a100-2131c2b18b4c',
    metadata: [],
    started_at: DateTime.iso8601('2025-04-04T09:16:39.148Z'),
    status: Models::Shared::ComputeDeploymentStatus::LIVE,
    trigger: Models::Shared::Trigger::API,
    updated_at: DateTime.iso8601('2026-02-20T23:22:47.276Z'),
    url: 'https://comfortable-petal.name',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.patch_compute_deployment(request: req)

unless res.compute_deployment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchComputeDeploymentRequest](../../models/operations/patchcomputedeploymentrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchComputeDeploymentResponse)](../../models/operations/patchcomputedeploymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_domain

Update a domain

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeDomain" method="patch" path="/compute/{connection_id}/domain/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeDomainRequest.new(
  compute_domain: Models::Shared::ComputeDomain.new(
    created_at: DateTime.iso8601('2019-11-22T16:38:26.009Z'),
    id: '7db3b32f-4ab3-4382-93fb-f6bc2926a772',
    is_primary: false,
    name: 'mysterious-republican.usable-section.info',
    status: Models::Shared::ComputeDomainStatus::PENDING,
    updated_at: DateTime.iso8601('2023-10-29T10:14:02.190Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.patch_compute_domain(request: req)

unless res.compute_domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchComputeDomainRequest](../../models/operations/patchcomputedomainrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchComputeDomainResponse)](../../models/operations/patchcomputedomainresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_envvar

Update an envvar

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeEnvvar" method="patch" path="/compute/{connection_id}/envvar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeEnvvarRequest.new(
  compute_envvar: Models::Shared::ComputeEnvvar.new(
    created_at: DateTime.iso8601('2021-08-16T07:52:27.306Z'),
    environments: [
      Models::Shared::PropertyComputeEnvvarEnvironments::PREVIEW,
    ],
    id: 'c48e9c88-d100-4ca2-bd8b-2752b9082557',
    is_secret: true,
    name: 'AEGER_SUBSTANTIA',
    updated_at: DateTime.iso8601('2025-06-26T18:27:58.112Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.patch_compute_envvar(request: req)

unless res.compute_envvar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchComputeEnvvarRequest](../../models/operations/patchcomputeenvvarrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchComputeEnvvarResponse)](../../models/operations/patchcomputeenvvarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_instance

Update an instance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeInstance" method="patch" path="/compute/{connection_id}/instance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeInstanceRequest.new(
  compute_instance: Models::Shared::ComputeInstance.new(
    allowed_actions: [
      Models::Shared::PropertyComputeInstanceAllowedActions::TERMINATE,
    ],
    architecture: Models::Shared::ComputeInstanceArchitecture::OTHER,
    cpu_count: 8.0,
    created_at: DateTime.iso8601('2022-10-07T14:18:53.874Z'),
    currency: 'USD',
    disk_mb: 1_024_000.0,
    endpoints: [
      Models::Shared::ComputeEndpoint.new(
        is_auth_required: true,
        port: 8080.0,
        protocol: Models::Shared::Protocol::HTTPS,
        url: 'https://serene-shark.biz/',
      ),
    ],
    gpu_count: 0.0,
    has_internet_access: true,
    id: '0542ee54-d95c-4a51-af39-c723c3a2629f',
    image: 'ubuntu:24.04',
    market: Models::Shared::Market::SPOT,
    memory_mb: 2048.0,
    metadata: [],
    name: 'digital-panel',
    on_idle: Models::Shared::OnIdle::TERMINATE,
    price_amount: 24.90_336_107_776_966,
    price_unit: Models::Shared::PriceUnit::PER_INSTANCE_HOUR,
    project_identifier: 'g547KrivqY',
    ssh: Models::Shared::PropertyComputeInstanceSsh.new(
      host: '116.42.165.89',
      port: 22.0,
      username: 'root',
    ),
    started_at: DateTime.iso8601('2025-03-18T10:00:21.623Z'),
    status: Models::Shared::ComputeInstanceStatus::ERROR,
    status_reason: 'Sponte quasi adversus alioqui reiciendis arca carmen canis.',
    type: Models::Shared::ComputeInstanceType::BAREMETAL,
    updated_at: DateTime.iso8601('2025-06-10T03:03:03.068Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.patch_compute_instance(request: req)

unless res.compute_instance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchComputeInstanceRequest](../../models/operations/patchcomputeinstancerequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchComputeInstanceResponse)](../../models/operations/patchcomputeinstanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_key

Update a key

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeKey" method="patch" path="/compute/{connection_id}/key/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeKeyRequest.new(
  compute_key: Models::Shared::ComputeKey.new(
    created_at: DateTime.iso8601('2023-08-19T14:31:46.492Z'),
    id: 'ac1f75f7-ba07-4a94-8548-001cf64e4a9e',
    name: 'nienow-secret',
    type: Models::Shared::ComputeKeyType::SECRET,
    updated_at: DateTime.iso8601('2024-10-03T17:05:27.779Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.patch_compute_key(request: req)

unless res.compute_key.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchComputeKeyRequest](../../models/operations/patchcomputekeyrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchComputeKeyResponse)](../../models/operations/patchcomputekeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_service

Update a service

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeService" method="patch" path="/compute/{connection_id}/service/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeServiceRequest.new(
  compute_service: Models::Shared::ComputeService.new(
    branch: 'main',
    build_command: 'npm run build',
    created_at: DateTime.iso8601('2023-10-04T02:06:29.391Z'),
    id: '763e1189-802f-4b01-b908-bfff94cf9705',
    instance_count: 6.0,
    max_instance_count: 6.0,
    metadata: [],
    min_instance_count: 1.0,
    name: 'tame-sideboard',
    project_identifier: '4nyWICvPfi',
    repo_url: 'https://github.com/Kimberly_Muller95/tame-sideboard',
    runtime: 'python',
    status: Models::Shared::ComputeServiceStatus::SUSPENDED,
    type: Models::Shared::ComputeServiceType::OTHER,
    updated_at: DateTime.iso8601('2025-03-31T04:40:06.743Z'),
    url: 'https://tame-sideboard.rotating-shoulder.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.patch_compute_service(request: req)

unless res.compute_service.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchComputeServiceRequest](../../models/operations/patchcomputeservicerequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchComputeServiceResponse)](../../models/operations/patchcomputeserviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_template

Update a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeTemplate" method="patch" path="/compute/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeTemplateRequest.new(
  compute_template: Models::Shared::ComputeTemplate.new(
    cpu_count: 4.0,
    created_at: DateTime.iso8601('2023-02-23T03:28:59.864Z'),
    disk_mb: 10_240.0,
    dockerfile: 'FROM ubuntu:24.04\n" +
    "RUN apt-get update',
    gpu_count: 2.0,
    gpu_model: Models::Shared::ComputeTemplateGpuModel::NVIDIA_GH200,
    id: 'a53918e0-e21e-4e04-82cf-41058aa5f98a',
    image: 'perfumed-molasses/cohibeo:5.2',
    is_public: false,
    last_used_at: DateTime.iso8601('2026-03-16T04:16:01.090Z'),
    memory_mb: 8192.0,
    metadata: [],
    name: 'multi-byte-card',
    ports: [
      8080.0,
    ],
    status: Models::Shared::ComputeTemplateStatus::OTHER,
    updated_at: DateTime.iso8601('2025-02-07T20:38:00.409Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.patch_compute_template(request: req)

unless res.compute_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchComputeTemplateRequest](../../models/operations/patchcomputetemplaterequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchComputeTemplateResponse)](../../models/operations/patchcomputetemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_volume

Update a volume

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeVolume" method="patch" path="/compute/{connection_id}/volume/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeVolumeRequest.new(
  compute_volume: Models::Shared::ComputeVolume.new(
    created_at: DateTime.iso8601('2022-11-15T15:12:48.055Z'),
    id: '07ae8329-f7ef-4ec8-9c7f-7679fbbaaedd',
    instance_ids: [],
    metadata: [],
    name: 'vol-solum',
    size_mb: 1_024_000.0,
    status: Models::Shared::ComputeVolumeStatus::OTHER,
    type: Models::Shared::ComputeVolumeType::HIGH_PERFORMANCE,
    updated_at: DateTime.iso8601('2024-02-07T01:04:26.223Z'),
    used_mb: 524_986.0,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.patch_compute_volume(request: req)

unless res.compute_volume.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchComputeVolumeRequest](../../models/operations/patchcomputevolumerequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchComputeVolumeResponse)](../../models/operations/patchcomputevolumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_deployment

Remove a deployment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeDeployment" method="delete" path="/compute/{connection_id}/deployment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.remove_compute_deployment(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Deployment |

### Response

**[T.nilable(Models::Operations::RemoveComputeDeploymentResponse)](../../models/operations/removecomputedeploymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_domain

Remove a domain

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeDomain" method="delete" path="/compute/{connection_id}/domain/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.remove_compute_domain(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Domain     |

### Response

**[T.nilable(Models::Operations::RemoveComputeDomainResponse)](../../models/operations/removecomputedomainresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_envvar

Remove an envvar

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeEnvvar" method="delete" path="/compute/{connection_id}/envvar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.remove_compute_envvar(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Envvar     |

### Response

**[T.nilable(Models::Operations::RemoveComputeEnvvarResponse)](../../models/operations/removecomputeenvvarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_instance

Remove an instance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeInstance" method="delete" path="/compute/{connection_id}/instance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.remove_compute_instance(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Instance   |

### Response

**[T.nilable(Models::Operations::RemoveComputeInstanceResponse)](../../models/operations/removecomputeinstanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_key

Remove a key

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeKey" method="delete" path="/compute/{connection_id}/key/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.remove_compute_key(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Key        |

### Response

**[T.nilable(Models::Operations::RemoveComputeKeyResponse)](../../models/operations/removecomputekeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_service

Remove a service

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeService" method="delete" path="/compute/{connection_id}/service/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.remove_compute_service(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Service    |

### Response

**[T.nilable(Models::Operations::RemoveComputeServiceResponse)](../../models/operations/removecomputeserviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_snapshot

Remove a snapshot

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeSnapshot" method="delete" path="/compute/{connection_id}/snapshot/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.remove_compute_snapshot(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Snapshot   |

### Response

**[T.nilable(Models::Operations::RemoveComputeSnapshotResponse)](../../models/operations/removecomputesnapshotresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_template

Remove a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeTemplate" method="delete" path="/compute/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.remove_compute_template(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Template   |

### Response

**[T.nilable(Models::Operations::RemoveComputeTemplateResponse)](../../models/operations/removecomputetemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_volume

Remove a volume

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeVolume" method="delete" path="/compute/{connection_id}/volume/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.compute.remove_compute_volume(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Volume     |

### Response

**[T.nilable(Models::Operations::RemoveComputeVolumeResponse)](../../models/operations/removecomputevolumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_deployment

Update a deployment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeDeployment" method="put" path="/compute/{connection_id}/deployment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeDeploymentRequest.new(
  compute_deployment: Models::Shared::ComputeDeployment.new(
    branch: 'develop',
    commit_identifier: 'fadfe54eefd8fea670bea6d58b4b15d406c4b02b',
    commit_message: 'copy primary pixel',
    created_at: DateTime.iso8601('2022-06-07T03:52:04.613Z'),
    environment: Models::Shared::Environment::PREVIEW,
    finished_at: DateTime.iso8601('2025-08-22T21:30:41.331Z'),
    id: '3bfe8d6d-2e62-47d4-a100-2131c2b18b4c',
    metadata: [],
    started_at: DateTime.iso8601('2025-04-04T09:16:39.148Z'),
    status: Models::Shared::ComputeDeploymentStatus::LIVE,
    trigger: Models::Shared::Trigger::API,
    updated_at: DateTime.iso8601('2026-02-20T23:22:47.276Z'),
    url: 'https://comfortable-petal.name',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.update_compute_deployment(request: req)

unless res.compute_deployment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateComputeDeploymentRequest](../../models/operations/updatecomputedeploymentrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateComputeDeploymentResponse)](../../models/operations/updatecomputedeploymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_domain

Update a domain

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeDomain" method="put" path="/compute/{connection_id}/domain/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeDomainRequest.new(
  compute_domain: Models::Shared::ComputeDomain.new(
    created_at: DateTime.iso8601('2019-11-22T16:38:26.009Z'),
    id: '7db3b32f-4ab3-4382-93fb-f6bc2926a772',
    is_primary: false,
    name: 'mysterious-republican.usable-section.info',
    status: Models::Shared::ComputeDomainStatus::PENDING,
    updated_at: DateTime.iso8601('2023-10-29T10:14:02.190Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.update_compute_domain(request: req)

unless res.compute_domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateComputeDomainRequest](../../models/operations/updatecomputedomainrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateComputeDomainResponse)](../../models/operations/updatecomputedomainresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_envvar

Update an envvar

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeEnvvar" method="put" path="/compute/{connection_id}/envvar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeEnvvarRequest.new(
  compute_envvar: Models::Shared::ComputeEnvvar.new(
    created_at: DateTime.iso8601('2021-08-16T07:52:27.306Z'),
    environments: [
      Models::Shared::PropertyComputeEnvvarEnvironments::PREVIEW,
    ],
    id: 'c48e9c88-d100-4ca2-bd8b-2752b9082557',
    is_secret: true,
    name: 'AEGER_SUBSTANTIA',
    updated_at: DateTime.iso8601('2025-06-26T18:27:58.112Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.update_compute_envvar(request: req)

unless res.compute_envvar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateComputeEnvvarRequest](../../models/operations/updatecomputeenvvarrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateComputeEnvvarResponse)](../../models/operations/updatecomputeenvvarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_instance

Update an instance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeInstance" method="put" path="/compute/{connection_id}/instance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeInstanceRequest.new(
  compute_instance: Models::Shared::ComputeInstance.new(
    allowed_actions: [
      Models::Shared::PropertyComputeInstanceAllowedActions::TERMINATE,
    ],
    architecture: Models::Shared::ComputeInstanceArchitecture::OTHER,
    cpu_count: 8.0,
    created_at: DateTime.iso8601('2022-10-07T14:18:53.874Z'),
    currency: 'USD',
    disk_mb: 1_024_000.0,
    endpoints: [
      Models::Shared::ComputeEndpoint.new(
        is_auth_required: true,
        port: 8080.0,
        protocol: Models::Shared::Protocol::HTTPS,
        url: 'https://serene-shark.biz/',
      ),
    ],
    gpu_count: 0.0,
    has_internet_access: true,
    id: '0542ee54-d95c-4a51-af39-c723c3a2629f',
    image: 'ubuntu:24.04',
    market: Models::Shared::Market::SPOT,
    memory_mb: 2048.0,
    metadata: [],
    name: 'digital-panel',
    on_idle: Models::Shared::OnIdle::TERMINATE,
    price_amount: 24.90_336_107_776_966,
    price_unit: Models::Shared::PriceUnit::PER_INSTANCE_HOUR,
    project_identifier: 'g547KrivqY',
    ssh: Models::Shared::PropertyComputeInstanceSsh.new(
      host: '116.42.165.89',
      port: 22.0,
      username: 'root',
    ),
    started_at: DateTime.iso8601('2025-03-18T10:00:21.623Z'),
    status: Models::Shared::ComputeInstanceStatus::ERROR,
    status_reason: 'Sponte quasi adversus alioqui reiciendis arca carmen canis.',
    type: Models::Shared::ComputeInstanceType::BAREMETAL,
    updated_at: DateTime.iso8601('2025-06-10T03:03:03.068Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.update_compute_instance(request: req)

unless res.compute_instance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateComputeInstanceRequest](../../models/operations/updatecomputeinstancerequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateComputeInstanceResponse)](../../models/operations/updatecomputeinstanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_key

Update a key

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeKey" method="put" path="/compute/{connection_id}/key/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeKeyRequest.new(
  compute_key: Models::Shared::ComputeKey.new(
    created_at: DateTime.iso8601('2023-08-19T14:31:46.492Z'),
    id: 'ac1f75f7-ba07-4a94-8548-001cf64e4a9e',
    name: 'nienow-secret',
    type: Models::Shared::ComputeKeyType::SECRET,
    updated_at: DateTime.iso8601('2024-10-03T17:05:27.779Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.update_compute_key(request: req)

unless res.compute_key.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateComputeKeyRequest](../../models/operations/updatecomputekeyrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateComputeKeyResponse)](../../models/operations/updatecomputekeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_service

Update a service

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeService" method="put" path="/compute/{connection_id}/service/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeServiceRequest.new(
  compute_service: Models::Shared::ComputeService.new(
    branch: 'main',
    build_command: 'npm run build',
    created_at: DateTime.iso8601('2023-10-04T02:06:29.391Z'),
    id: '763e1189-802f-4b01-b908-bfff94cf9705',
    instance_count: 6.0,
    max_instance_count: 6.0,
    metadata: [],
    min_instance_count: 1.0,
    name: 'tame-sideboard',
    project_identifier: '4nyWICvPfi',
    repo_url: 'https://github.com/Kimberly_Muller95/tame-sideboard',
    runtime: 'python',
    status: Models::Shared::ComputeServiceStatus::SUSPENDED,
    type: Models::Shared::ComputeServiceType::OTHER,
    updated_at: DateTime.iso8601('2025-03-31T04:40:06.743Z'),
    url: 'https://tame-sideboard.rotating-shoulder.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.update_compute_service(request: req)

unless res.compute_service.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateComputeServiceRequest](../../models/operations/updatecomputeservicerequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateComputeServiceResponse)](../../models/operations/updatecomputeserviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_template

Update a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeTemplate" method="put" path="/compute/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeTemplateRequest.new(
  compute_template: Models::Shared::ComputeTemplate.new(
    cpu_count: 4.0,
    created_at: DateTime.iso8601('2023-02-23T03:28:59.864Z'),
    disk_mb: 10_240.0,
    dockerfile: 'FROM ubuntu:24.04\n" +
    "RUN apt-get update',
    gpu_count: 2.0,
    gpu_model: Models::Shared::ComputeTemplateGpuModel::NVIDIA_GH200,
    id: 'a53918e0-e21e-4e04-82cf-41058aa5f98a',
    image: 'perfumed-molasses/cohibeo:5.2',
    is_public: false,
    last_used_at: DateTime.iso8601('2026-03-16T04:16:01.090Z'),
    memory_mb: 8192.0,
    metadata: [],
    name: 'multi-byte-card',
    ports: [
      8080.0,
    ],
    status: Models::Shared::ComputeTemplateStatus::OTHER,
    updated_at: DateTime.iso8601('2025-02-07T20:38:00.409Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.update_compute_template(request: req)

unless res.compute_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateComputeTemplateRequest](../../models/operations/updatecomputetemplaterequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateComputeTemplateResponse)](../../models/operations/updatecomputetemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_volume

Update a volume

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeVolume" method="put" path="/compute/{connection_id}/volume/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeVolumeRequest.new(
  compute_volume: Models::Shared::ComputeVolume.new(
    created_at: DateTime.iso8601('2022-11-15T15:12:48.055Z'),
    id: '07ae8329-f7ef-4ec8-9c7f-7679fbbaaedd',
    instance_ids: [],
    metadata: [],
    name: 'vol-solum',
    size_mb: 1_024_000.0,
    status: Models::Shared::ComputeVolumeStatus::OTHER,
    type: Models::Shared::ComputeVolumeType::HIGH_PERFORMANCE,
    updated_at: DateTime.iso8601('2024-02-07T01:04:26.223Z'),
    used_mb: 524_986.0,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.compute.update_compute_volume(request: req)

unless res.compute_volume.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateComputeVolumeRequest](../../models/operations/updatecomputevolumerequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateComputeVolumeResponse)](../../models/operations/updatecomputevolumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |