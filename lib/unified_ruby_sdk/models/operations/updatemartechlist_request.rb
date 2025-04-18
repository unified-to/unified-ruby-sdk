# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class UpdateMartechListRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
        # ID of the List
        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
        # Mailing List
        field :marketing_list, Models::Shared::MarketingList, { 'request': { 'media_type': 'application/json' } }
        # Comma-delimited fields to return
        field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


        sig { params(connection_id: ::String, id: ::String, marketing_list: Models::Shared::MarketingList, fields_: T.nilable(T::Array[::String])).void }
        def initialize(connection_id: nil, id: nil, marketing_list: nil, fields_: nil)
          @connection_id = connection_id
          @id = id
          @marketing_list = marketing_list
          @fields_ = fields_
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @connection_id == other.connection_id
          return false unless @id == other.id
          return false unless @marketing_list == other.marketing_list
          return false unless @fields_ == other.fields_
          true
        end
      end
    end
  end
end
