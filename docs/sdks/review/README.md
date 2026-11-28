# Review

## Overview

### Available Operations

* [create_commerce_review](#create_commerce_review) - Create a review
* [get_commerce_review](#get_commerce_review) - Retrieve a review
* [get_performance_review](#get_performance_review) - Retrieve a review
* [get_property_review](#get_property_review) - Retrieve a review
* [get_social_review](#get_social_review) - Retrieve a review
* [list_commerce_reviews](#list_commerce_reviews) - List all reviews
* [list_performance_reviews](#list_performance_reviews) - List all reviews
* [list_property_reviews](#list_property_reviews) - List all reviews
* [list_social_reviews](#list_social_reviews) - List all reviews
* [patch_commerce_review](#patch_commerce_review) - Update a review
* [patch_property_review](#patch_property_review) - Update a review
* [patch_social_review](#patch_social_review) - Update a review
* [remove_commerce_review](#remove_commerce_review) - Remove a review
* [update_commerce_review](#update_commerce_review) - Update a review
* [update_property_review](#update_property_review) - Update a review
* [update_social_review](#update_social_review) - Update a review

## create_commerce_review

Creates a CommerceReview. Provide the unified CommerceReview fields in the request body; they are mapped to the provider's API. Returns the created CommerceReview.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceReview" method="post" path="/commerce/{connection_id}/review" example="commerce_review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.review.create_commerce_review(commerce_review: Models::Shared::CommerceReview.new(
  author_avatar_url: 'https://picsum.photos/seed/jt3vcEZv/1605/7',
  author_email: 'jovan.bartell@hotmail.com',
  author_location: 'comburo',
  author_name: 'Jovan Bartell',
  comments: [],
  content: 'Vix taedium thymum adipiscor amicitia.',
  created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
  helpful_votes: 66.0,
  id: 'd288234b-23a6-4511-860b-a4f3d7c6e98a',
  is_featured: false,
  is_public: true,
  is_verified: false,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Teneo.',
      height: 749.0,
      id: '47d25bed-22e4-4b17-afaa-e3b4c150833d',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'c3c1f905-2b86-4afd-8b8d-acbc362dddc8',
          slug: 'numquam',
          value: 'bos'
        ),
      ],
      position: 29.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://picsum.photos/seed/jNDix4Br/995/2602',
      width: 72.0
    ),
    Models::Shared::CommerceItemMedia.new(
      alt: 'Ratione vulticulus arbitro ultio pauci.',
      height: 957.0,
      id: '69440ea0-c80b-4d2f-b70b-994f2a243ccb',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'f05e234f-0a7c-4d1c-95ac-e044a68021e0',
          slug: 'timidus',
          value: 'sol'
        ),
      ],
      position: 69.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/b35MixS23/1004/1925',
      width: 61.0
    ),
  ],
  metadata: [],
  rating: 3.0,
  status: Models::Shared::CommerceReviewStatus::APPROVED,
  title: 'Auxilium.',
  unhelpful_votes: 88.0,
  updated_at: DateTime.iso8601('2025-09-21T22:02:17.419Z'),
  url: 'https://whispered-hawk.name',
  verified_purchase: true
), connection_id: '<id>')

unless res.commerce_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `commerce_review`                                                                                                                                | [Models::Shared::CommerceReview](../../models/shared/commercereview.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCommerceReviewQueryParamFields](../../models/operations/createcommercereviewqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCommerceReviewResponse)](../../models/operations/createcommercereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_commerce_review

Retrieves a single CommerceReview by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceReview" method="get" path="/commerce/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.review.get_commerce_review(connection_id: '<id>', id: '<id>')

unless res.commerce_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Review                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceReviewQueryParamFields](../../models/operations/getcommercereviewqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceReviewResponse)](../../models/operations/getcommercereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_performance_review

Retrieves a single PerformanceReview by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPerformanceReview" method="get" path="/performance/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.review.get_performance_review(connection_id: '<id>', id: '<id>')

unless res.performance_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Review                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPerformanceReviewQueryParamFields](../../models/operations/getperformancereviewqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPerformanceReviewResponse)](../../models/operations/getperformancereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_property_review

Retrieves a single PropertyReview by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPropertyReview" method="get" path="/property/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.review.get_property_review(connection_id: '<id>', id: '<id>')

unless res.property_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Review                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPropertyReviewQueryParamFields](../../models/operations/getpropertyreviewqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPropertyReviewResponse)](../../models/operations/getpropertyreviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_social_review

Retrieves a single SocialReview by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getSocialReview" method="get" path="/social/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.review.get_social_review(connection_id: '<id>', id: '<id>')

unless res.social_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Review                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetSocialReviewQueryParamFields](../../models/operations/getsocialreviewqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetSocialReviewResponse)](../../models/operations/getsocialreviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_reviews

Returns a list of CommerceReviews. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceReviews" method="get" path="/commerce/{connection_id}/review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceReviewsRequest.new(
  connection_id: '<id>'
)
res = s.review.list_commerce_reviews(request: req)

unless res.commerce_reviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListCommerceReviewsRequest](../../models/operations/listcommercereviewsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListCommerceReviewsResponse)](../../models/operations/listcommercereviewsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_performance_reviews

Returns a list of PerformanceReviews. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPerformanceReviews" method="get" path="/performance/{connection_id}/review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPerformanceReviewsRequest.new(
  connection_id: '<id>'
)
res = s.review.list_performance_reviews(request: req)

unless res.performance_reviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListPerformanceReviewsRequest](../../models/operations/listperformancereviewsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListPerformanceReviewsResponse)](../../models/operations/listperformancereviewsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_property_reviews

Returns a list of PropertyReviews. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPropertyReviews" method="get" path="/property/{connection_id}/review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPropertyReviewsRequest.new(
  connection_id: '<id>'
)
res = s.review.list_property_reviews(request: req)

unless res.property_reviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListPropertyReviewsRequest](../../models/operations/listpropertyreviewsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListPropertyReviewsResponse)](../../models/operations/listpropertyreviewsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_social_reviews

Returns a list of SocialReviews. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listSocialReviews" method="get" path="/social/{connection_id}/review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListSocialReviewsRequest.new(
  connection_id: '<id>'
)
res = s.review.list_social_reviews(request: req)

unless res.social_reviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListSocialReviewsRequest](../../models/operations/listsocialreviewsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListSocialReviewsResponse)](../../models/operations/listsocialreviewsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_commerce_review

Updates the CommerceReview identified by `id`. Provide the unified CommerceReview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceReview" method="patch" path="/commerce/{connection_id}/review/{id}" example="commerce_review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCommerceReviewRequest.new(
  commerce_review: Models::Shared::CommerceReview.new(
    author_avatar_url: 'https://picsum.photos/seed/jt3vcEZv/1605/7',
    author_email: 'jovan.bartell@hotmail.com',
    author_location: 'comburo',
    author_name: 'Jovan Bartell',
    comments: [],
    content: 'Vix taedium thymum adipiscor amicitia.',
    created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
    helpful_votes: 66.0,
    id: '3a4aa53d-912f-49a3-96fd-02e062b4076d',
    is_featured: false,
    is_public: true,
    is_verified: false,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Teneo.',
        height: 749.0,
        id: '622f2288-e5ce-401f-ad90-ebd80e1a5943',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '411f8d19-6c2e-4562-b0f9-14031f971730',
            slug: 'numquam',
            value: 'bos'
          ),
        ],
        position: 29.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/jNDix4Br/995/2602',
        width: 72.0
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Ratione vulticulus arbitro ultio pauci.',
        height: 957.0,
        id: 'fb49280a-dd18-43a7-b28e-dc7a1d615736',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '5ff06c08-8cfe-4e27-9f1a-cdf12c123f7c',
            slug: 'timidus',
            value: 'sol'
          ),
        ],
        position: 69.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/b35MixS23/1004/1925',
        width: 61.0
      ),
    ],
    metadata: [],
    rating: 3.0,
    status: Models::Shared::CommerceReviewStatus::APPROVED,
    title: 'Auxilium.',
    unhelpful_votes: 88.0,
    updated_at: DateTime.iso8601('2025-09-21T22:02:17.454Z'),
    url: 'https://whispered-hawk.name',
    verified_purchase: true
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.review.patch_commerce_review(request: req)

unless res.commerce_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchCommerceReviewRequest](../../models/operations/patchcommercereviewrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchCommerceReviewResponse)](../../models/operations/patchcommercereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_property_review

Updates the PropertyReview identified by `id`. Provide the unified PropertyReview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPropertyReview" method="patch" path="/property/{connection_id}/review/{id}" example="property_review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchPropertyReviewRequest.new(
  property_review: Models::Shared::PropertyReview.new(
    author_name: 'Hilma Volkman',
    category_ratings: [
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::CLEANLINESS,
        comment: 'Sum blanditiis terreo adinventitias capitulus dolorem verus studio voluptates temperantia.',
        rating: 5.0
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::ACCURACY,
        comment: 'Avarus caelum curvo utor odit arcesso quisquam.',
        rating: 4.0
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::COMMUNICATION,
        rating: 1.0
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::CHECKIN,
        rating: 1.0
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::LOCATION,
        rating: 2.0
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::VALUE,
        comment: 'Iusto artificiose odit nemo sui.',
        rating: 5.0
      ),
    ],
    content: 'Attonbitus comitatus auditor. Tergo nostrum deleo vomica comprehendo tertius summopere. Apparatus incidunt tabula pauci confido colo fugiat umquam perferendis amitto.',
    created_at: DateTime.iso8601('2022-10-17T11:17:07.682Z'),
    id: '7e18e7f6-c3eb-454c-a837-d269e0c29e1d',
    is_public: true,
    metadata: [],
    private_feedback: 'Patria stella magni.',
    rating: 3.0,
    source: 'Airbnb',
    updated_at: DateTime.iso8601('2026-03-14T09:36:41.828Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.review.patch_property_review(request: req)

unless res.property_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchPropertyReviewRequest](../../models/operations/patchpropertyreviewrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchPropertyReviewResponse)](../../models/operations/patchpropertyreviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_social_review

Updates the SocialReview identified by `id`. Provide the unified SocialReview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchSocialReview" method="patch" path="/social/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchSocialReviewRequest.new(
  social_review: Models::Shared::SocialReview.new,
  connection_id: '<id>',
  id: '<id>'
)
res = s.review.patch_social_review(request: req)

unless res.social_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchSocialReviewRequest](../../models/operations/patchsocialreviewrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchSocialReviewResponse)](../../models/operations/patchsocialreviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_commerce_review

Deletes the CommerceReview identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceReview" method="delete" path="/commerce/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.review.remove_commerce_review(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Review     |

### Response

**[T.nilable(Models::Operations::RemoveCommerceReviewResponse)](../../models/operations/removecommercereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_commerce_review

Updates the CommerceReview identified by `id`. Provide the unified CommerceReview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceReview" method="put" path="/commerce/{connection_id}/review/{id}" example="commerce_review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCommerceReviewRequest.new(
  commerce_review: Models::Shared::CommerceReview.new(
    author_avatar_url: 'https://picsum.photos/seed/jt3vcEZv/1605/7',
    author_email: 'jovan.bartell@hotmail.com',
    author_location: 'comburo',
    author_name: 'Jovan Bartell',
    comments: [],
    content: 'Vix taedium thymum adipiscor amicitia.',
    created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
    helpful_votes: 66.0,
    id: '3a4aa53d-912f-49a3-96fd-02e062b4076d',
    is_featured: false,
    is_public: true,
    is_verified: false,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Teneo.',
        height: 749.0,
        id: '622f2288-e5ce-401f-ad90-ebd80e1a5943',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '411f8d19-6c2e-4562-b0f9-14031f971730',
            slug: 'numquam',
            value: 'bos'
          ),
        ],
        position: 29.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/jNDix4Br/995/2602',
        width: 72.0
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Ratione vulticulus arbitro ultio pauci.',
        height: 957.0,
        id: 'fb49280a-dd18-43a7-b28e-dc7a1d615736',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '5ff06c08-8cfe-4e27-9f1a-cdf12c123f7c',
            slug: 'timidus',
            value: 'sol'
          ),
        ],
        position: 69.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/b35MixS23/1004/1925',
        width: 61.0
      ),
    ],
    metadata: [],
    rating: 3.0,
    status: Models::Shared::CommerceReviewStatus::APPROVED,
    title: 'Auxilium.',
    unhelpful_votes: 88.0,
    updated_at: DateTime.iso8601('2025-09-21T22:02:17.454Z'),
    url: 'https://whispered-hawk.name',
    verified_purchase: true
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.review.update_commerce_review(request: req)

unless res.commerce_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateCommerceReviewRequest](../../models/operations/updatecommercereviewrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateCommerceReviewResponse)](../../models/operations/updatecommercereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_property_review

Updates the PropertyReview identified by `id`. Provide the unified PropertyReview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePropertyReview" method="put" path="/property/{connection_id}/review/{id}" example="property_review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdatePropertyReviewRequest.new(
  property_review: Models::Shared::PropertyReview.new(
    author_name: 'Hilma Volkman',
    category_ratings: [
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::CLEANLINESS,
        comment: 'Sum blanditiis terreo adinventitias capitulus dolorem verus studio voluptates temperantia.',
        rating: 5.0
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::ACCURACY,
        comment: 'Avarus caelum curvo utor odit arcesso quisquam.',
        rating: 4.0
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::COMMUNICATION,
        rating: 1.0
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::CHECKIN,
        rating: 1.0
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::LOCATION,
        rating: 2.0
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::VALUE,
        comment: 'Iusto artificiose odit nemo sui.',
        rating: 5.0
      ),
    ],
    content: 'Attonbitus comitatus auditor. Tergo nostrum deleo vomica comprehendo tertius summopere. Apparatus incidunt tabula pauci confido colo fugiat umquam perferendis amitto.',
    created_at: DateTime.iso8601('2022-10-17T11:17:07.682Z'),
    id: '7e18e7f6-c3eb-454c-a837-d269e0c29e1d',
    is_public: true,
    metadata: [],
    private_feedback: 'Patria stella magni.',
    rating: 3.0,
    source: 'Airbnb',
    updated_at: DateTime.iso8601('2026-03-14T09:36:41.828Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.review.update_property_review(request: req)

unless res.property_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdatePropertyReviewRequest](../../models/operations/updatepropertyreviewrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdatePropertyReviewResponse)](../../models/operations/updatepropertyreviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_social_review

Updates the SocialReview identified by `id`. Provide the unified SocialReview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateSocialReview" method="put" path="/social/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateSocialReviewRequest.new(
  social_review: Models::Shared::SocialReview.new,
  connection_id: '<id>',
  id: '<id>'
)
res = s.review.update_social_review(request: req)

unless res.social_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateSocialReviewRequest](../../models/operations/updatesocialreviewrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateSocialReviewResponse)](../../models/operations/updatesocialreviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |