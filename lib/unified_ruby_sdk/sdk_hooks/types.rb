# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'

module UnifiedRubySDK
  module SDKHooks
    class HookContext
      extend T::Sig

      sig { returns(String) }
      attr_accessor :base_url

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :oauth2_scopes

      sig { returns(String) }
      attr_accessor :operation_id

      sig { returns(T.nilable(T.proc.returns(T.untyped))) }
      attr_accessor :security_source

      sig do
        params(
          base_url: String,
          oauth2_scopes: T.nilable(T::Array[String]),
          operation_id: String,
          security_source: T.nilable(T.proc.returns(T.untyped))
        ).void
      end
      def initialize(base_url:, oauth2_scopes:, operation_id:, security_source:)
        @base_url = T.let(base_url, String)
        @oauth2_scopes = T.let(oauth2_scopes, T.nilable(T::Array[String]))
        @operation_id = T.let(operation_id, String)
        @security_source = T.let(security_source, T.nilable(T.proc.returns(T.untyped)))
      end
    end

    class BeforeRequestHookContext < HookContext
      extend T::Sig

      sig do
        params(
          hook_ctx: HookContext
        ).void
      end
      def initialize(hook_ctx:)
        super(
          base_url: hook_ctx.base_url,
          operation_id: hook_ctx.operation_id,
          oauth2_scopes: hook_ctx.oauth2_scopes,
          security_source: hook_ctx.security_source
        )
      end
    end

    class AfterSuccessHookContext < HookContext
      extend T::Sig

      sig do
        params(
          hook_ctx: HookContext
        ).void
      end
      def initialize(hook_ctx:)
        super(
          base_url: hook_ctx.base_url,
          operation_id: hook_ctx.operation_id,
          oauth2_scopes: hook_ctx.oauth2_scopes,
          security_source: hook_ctx.security_source
        )
      end
    end

    class AfterErrorHookContext < HookContext
      extend T::Sig

      sig do
        params(
          hook_ctx: HookContext
        ).void
      end
      def initialize(hook_ctx:)
        super(
          base_url: hook_ctx.base_url,
          operation_id: hook_ctx.operation_id,
          oauth2_scopes: hook_ctx.oauth2_scopes,
          security_source: hook_ctx.security_source
        )
      end
    end

    module AbstractSDKInitHook
      extend T::Sig
      extend T::Helpers
      abstract!

      sig do
        abstract.params(
          base_url: String,
          client: Faraday::Connection
        ).returns([String, Faraday::Connection])
      end
      def sdk_init(base_url:, client:); end
    end

    module AbstractBeforeRequestHook
      extend T::Sig
      extend T::Helpers
      abstract!

      sig do
        abstract.params(
          hook_ctx: BeforeRequestHookContext,
          request: Faraday::Request
        ).returns(Faraday::Request)
      end
      def before_request(hook_ctx:, request:); end
    end

    module AbstractAfterSuccessHook
      extend T::Sig
      extend T::Helpers
      abstract!

      sig do
        abstract.params(
          hook_ctx: AfterSuccessHookContext,
          response: Faraday::Response
        ).returns(Faraday::Response)
      end
      def after_success(hook_ctx:, response:); end
    end

    module AbstractAfterErrorHook
      extend T::Sig
      extend T::Helpers
      abstract!

      sig do
        abstract.params(
          error: T.nilable(StandardError),
          hook_ctx: AfterErrorHookContext,
          response: T.nilable(Faraday::Response)
        ).returns(T.nilable(Faraday::Response))
      end
      def after_error(error:, hook_ctx:, response:); end
    end
  end
end
