# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class PropertyAccountingReportProfitAndLoss
        extend T::Sig
        include Crystalline::MetadataFields


        field :cost_of_goods_sold, T.nilable(T::Array[Models::Shared::AccountingProfitAndLossCategory]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('cost_of_goods_sold') } }

        field :expenses, T.nilable(T::Array[Models::Shared::AccountingProfitAndLossCategory]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('expenses') } }

        field :gross_profit_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('gross_profit_amount') } }

        field :income, T.nilable(T::Array[Models::Shared::AccountingProfitAndLossCategory]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('income') } }

        field :net_profit_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('net_profit_amount') } }


        sig { params(cost_of_goods_sold: T.nilable(T::Array[Models::Shared::AccountingProfitAndLossCategory]), expenses: T.nilable(T::Array[Models::Shared::AccountingProfitAndLossCategory]), gross_profit_amount: T.nilable(::Float), income: T.nilable(T::Array[Models::Shared::AccountingProfitAndLossCategory]), net_profit_amount: T.nilable(::Float)).void }
        def initialize(cost_of_goods_sold: nil, expenses: nil, gross_profit_amount: nil, income: nil, net_profit_amount: nil)
          @cost_of_goods_sold = cost_of_goods_sold
          @expenses = expenses
          @gross_profit_amount = gross_profit_amount
          @income = income
          @net_profit_amount = net_profit_amount
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @cost_of_goods_sold == other.cost_of_goods_sold
          return false unless @expenses == other.expenses
          return false unless @gross_profit_amount == other.gross_profit_amount
          return false unless @income == other.income
          return false unless @net_profit_amount == other.net_profit_amount
          true
        end
      end
    end
  end
end
