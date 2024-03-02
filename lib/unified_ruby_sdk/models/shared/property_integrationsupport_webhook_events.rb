# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PropertyIntegrationSupportWebhookEvents < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :created, T.nilable(T::Array[::UnifiedRubySDK::Shared::PropertyPropertyIntegrationSupportWebhookEventsCreated]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created') } }

      field :deleted, T.nilable(T::Array[::UnifiedRubySDK::Shared::PropertyPropertyIntegrationSupportWebhookEventsDeleted]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('deleted') } }

      field :updated, T.nilable(T::Array[::UnifiedRubySDK::Shared::PropertyPropertyIntegrationSupportWebhookEventsUpdated]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated') } }


      sig { params(created: T.nilable(T::Array[::UnifiedRubySDK::Shared::PropertyPropertyIntegrationSupportWebhookEventsCreated]), deleted: T.nilable(T::Array[::UnifiedRubySDK::Shared::PropertyPropertyIntegrationSupportWebhookEventsDeleted]), updated: T.nilable(T::Array[::UnifiedRubySDK::Shared::PropertyPropertyIntegrationSupportWebhookEventsUpdated])).void }
      def initialize(created: nil, deleted: nil, updated: nil)
        @created = created
        @deleted = deleted
        @updated = updated
      end
    end
  end
end
