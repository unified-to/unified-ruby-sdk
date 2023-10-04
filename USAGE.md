<!-- Start SDK Example Usage -->


```python
import speakeasybar
from speakeasybar.models import operations, shared

s = speakeasybar.Speakeasybar(
    security=shared.Security(
        api_key="",
    ),
)


res = s.drinks.list_drinks(drink_type=shared.DrinkType.WINE)

if res.drinks is not None:
    # handle response
```
<!-- End SDK Example Usage -->