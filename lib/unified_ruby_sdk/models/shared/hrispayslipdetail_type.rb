# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class HrisPayslipDetailType < T::Enum
        enums do
          EARNING_SALARY = new('EARNING_SALARY')
          EARNING_OVERTIME = new('EARNING_OVERTIME')
          EARNING_TIP = new('EARNING_TIP')
          EARNING_BONUS = new('EARNING_BONUS')
          EARNING_COMMISSION = new('EARNING_COMMISSION')
          EARNING_ADJUSTMENT = new('EARNING_ADJUSTMENT')
          EARNING = new('EARNING')
          PRETAX_DEDUCTION = new('PRETAX_DEDUCTION')
          PRETAX_DEDUCTION_HEALTH_INSURANCE = new('PRETAX_DEDUCTION_HEALTH_INSURANCE')
          PRETAX_DEDUCTION_RETIREMENT = new('PRETAX_DEDUCTION_RETIREMENT')
          PRETAX_DEDUCTION_HRA = new('PRETAX_DEDUCTION_HRA')
          TAX_FEDERAL = new('TAX_FEDERAL')
          TAX_REGION = new('TAX_REGION')
          TAX_LOCAL = new('TAX_LOCAL')
          POSTTAX_BENEFIT = new('POSTTAX_BENEFIT')
          POSTTAX_GARNISHMENT = new('POSTTAX_GARNISHMENT')
          REIMBURSEMENT = new('REIMBURSEMENT')
        end
      end
    end
  end
end
