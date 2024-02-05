# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class QueryParamCategories < T::Enum
      enums do
        PASSTHROUGH = new('passthrough')
        HRIS = new('hris')
        ATS = new('ats')
        AUTH = new('auth')
        CRM = new('crm')
        ENRICH = new('enrich')
        MARTECH = new('martech')
        TICKETING = new('ticketing')
        UC = new('uc')
        ACCOUNTING = new('accounting')
        STORAGE = new('storage')
        COMMERCE = new('commerce')
      end
    end

  end
end
