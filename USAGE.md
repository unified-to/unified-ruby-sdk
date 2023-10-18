<!-- Start SDK Example Usage -->


```ruby
require_relative openapi


s = OpenApiSDK::Speakeasybar.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::ListDrinksRequest.new(
  query_params=Operations::ListDrinksRequest.new(
    drink_type=Shared::DrinkType::SPIRIT,
  ),
)
    
res = s.drinks.list_drinks(req)

if ! res.drinks.nil?
  # handle response
end

```
<!-- End SDK Example Usage -->