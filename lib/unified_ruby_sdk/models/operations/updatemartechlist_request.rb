# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateMartechListRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the List
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Mailing List
      field :marketing_list, T.nilable(::UnifiedRubySDK::Shared::MarketingList), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, marketing_list: T.nilable(::UnifiedRubySDK::Shared::MarketingList)).void }
      def initialize(connection_id: nil, id: nil, marketing_list: nil)
        @connection_id = connection_id
        @id = id
        @marketing_list = marketing_list
      end
    end
  end
end
