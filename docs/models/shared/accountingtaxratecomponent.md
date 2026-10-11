# AccountingTaxrateComponent


## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `is_compound`                                                      | *T.nilable(T::Boolean)*                                            | :heavy_minus_sign:                                                 | True when this component is charged on top of the other components |
| `name`                                                             | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | Name of the tax component, e.g. GST or PST                         |
| `rate`                                                             | *T.nilable(::Float)*                                               | :heavy_minus_sign:                                                 | Rate of this component, in %                                       |