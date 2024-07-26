# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateCrmDealRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Deal
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # A deal represents an opportunity with companies and/or contacts
      field :crm_deal, T.nilable(::UnifiedRubySDK::Shared::CrmDeal), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, crm_deal: T.nilable(::UnifiedRubySDK::Shared::CrmDeal)).void }
      def initialize(connection_id: nil, id: nil, crm_deal: nil)
        @connection_id = connection_id
        @id = id
        @crm_deal = crm_deal
      end
    end
  end
end
