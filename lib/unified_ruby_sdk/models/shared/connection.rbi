# typed: true
# frozen_string_literal: true


class UnifiedRubySDK::Models::Shared::Connection
  extend ::Crystalline::MetadataFields::ClassMethods
end


class UnifiedRubySDK::Models::Shared::Connection
  def categories(); end
  def categories=(str_); end
  def integration_type(); end
  def integration_type=(str_); end
  def permissions(); end
  def permissions=(str_); end
  def auth(); end
  def auth=(str_); end
  def auth_aws_arn(); end
  def auth_aws_arn=(str_); end
  def auth_azure_keyvault_id(); end
  def auth_azure_keyvault_id=(str_); end
  def auth_gcp_secret_name(); end
  def auth_gcp_secret_name=(str_); end
  def auth_hashi_vault_path(); end
  def auth_hashi_vault_path=(str_); end
  def created_at(); end
  def created_at=(str_); end
  def external_xref(); end
  def external_xref=(str_); end
  def id(); end
  def id=(str_); end
  def integration_name(); end
  def integration_name=(str_); end
  def is_paused(); end
  def is_paused=(str_); end
  def last_healthy_at(); end
  def last_healthy_at=(str_); end
  def last_unhealthy_at(); end
  def last_unhealthy_at=(str_); end
  def updated_at(); end
  def updated_at=(str_); end
  def workspace_id(); end
  def workspace_id=(str_); end
  def environment(); end
  def environment=(str_); end
end