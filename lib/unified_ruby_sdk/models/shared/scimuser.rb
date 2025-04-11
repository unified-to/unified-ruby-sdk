# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class ScimUser
        extend T::Sig
        include Crystalline::MetadataFields


        field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('active') } }

        field :addresses, T.nilable(T::Array[Models::Shared::ScimAddress]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('addresses') } }

        field :display_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('displayName') } }

        field :emails, T.nilable(T::Array[Models::Shared::ScimEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

        field :entitlements, T.nilable(T::Array[Models::Shared::ScimEntitlement]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('entitlements') } }

        field :external_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('externalId') } }

        field :groups, T.nilable(T::Array[Models::Shared::ScimUserGroups]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('groups') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :ims, T.nilable(T::Array[Models::Shared::ScimIms]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('ims') } }

        field :locale, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('locale') } }

        field :meta, T.nilable(Models::Shared::PropertyScimUserMeta), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('meta') } }

        field :name, T.nilable(Models::Shared::PropertyScimUserName), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

        field :nick_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('nickName') } }

        field :password, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('password') } }

        field :phone_numbers, T.nilable(T::Array[Models::Shared::ScimPhoneNumber]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('phoneNumbers') } }

        field :photos, T.nilable(T::Array[Models::Shared::ScimPhoto]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('photos') } }

        field :preferred_language, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('preferredLanguage') } }

        field :profile_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('profileUrl') } }
        # Student, Faculty, ...
        field :roles, T.nilable(T::Array[Models::Shared::ScimRole]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('roles') } }

        field :schemas, T.nilable(T::Array[Models::Shared::PropertyScimUserSchemas]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('schemas') } }

        field :timezone, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('timezone') } }

        field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('title') } }
        # an organization.
        field :urn_ietf_params_scim_schemas_extension_enterprise_2_0_user, T.nilable(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20User), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('urn:ietf:params:scim:schemas:extension:enterprise:2.0:User') } }

        field :urn_ietf_params_scim_schemas_extension_lattice_attributes_1_0_user, T.nilable(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionLatticeAttributes10User), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('urn:ietf:params:scim:schemas:extension:lattice:attributes:1.0:User') } }

        field :urn_ietf_params_scim_schemas_extension_peakon_2_0_user, T.nilable(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionPeakon20User), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('urn:ietf:params:scim:schemas:extension:peakon:2.0:User') } }

        field :user_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('userName') } }

        field :user_type, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('userType') } }

        field :x509_certificates, T.nilable(T::Array[Models::Shared::ScimRole]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('x509Certificates') } }


        sig { params(active: T.nilable(T::Boolean), addresses: T.nilable(T::Array[Models::Shared::ScimAddress]), display_name: T.nilable(::String), emails: T.nilable(T::Array[Models::Shared::ScimEmail]), entitlements: T.nilable(T::Array[Models::Shared::ScimEntitlement]), external_id: T.nilable(::String), groups: T.nilable(T::Array[Models::Shared::ScimUserGroups]), id: T.nilable(::String), ims: T.nilable(T::Array[Models::Shared::ScimIms]), locale: T.nilable(::String), meta: T.nilable(Models::Shared::PropertyScimUserMeta), name: T.nilable(Models::Shared::PropertyScimUserName), nick_name: T.nilable(::String), password: T.nilable(::String), phone_numbers: T.nilable(T::Array[Models::Shared::ScimPhoneNumber]), photos: T.nilable(T::Array[Models::Shared::ScimPhoto]), preferred_language: T.nilable(::String), profile_url: T.nilable(::String), roles: T.nilable(T::Array[Models::Shared::ScimRole]), schemas: T.nilable(T::Array[Models::Shared::PropertyScimUserSchemas]), timezone: T.nilable(::String), title: T.nilable(::String), urn_ietf_params_scim_schemas_extension_enterprise_2_0_user: T.nilable(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20User), urn_ietf_params_scim_schemas_extension_lattice_attributes_1_0_user: T.nilable(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionLatticeAttributes10User), urn_ietf_params_scim_schemas_extension_peakon_2_0_user: T.nilable(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionPeakon20User), user_name: T.nilable(::String), user_type: T.nilable(::String), x509_certificates: T.nilable(T::Array[Models::Shared::ScimRole])).void }
        def initialize(active: nil, addresses: nil, display_name: nil, emails: nil, entitlements: nil, external_id: nil, groups: nil, id: nil, ims: nil, locale: nil, meta: nil, name: nil, nick_name: nil, password: nil, phone_numbers: nil, photos: nil, preferred_language: nil, profile_url: nil, roles: nil, schemas: nil, timezone: nil, title: nil, urn_ietf_params_scim_schemas_extension_enterprise_2_0_user: nil, urn_ietf_params_scim_schemas_extension_lattice_attributes_1_0_user: nil, urn_ietf_params_scim_schemas_extension_peakon_2_0_user: nil, user_name: nil, user_type: nil, x509_certificates: nil)
          @active = active
          @addresses = addresses
          @display_name = display_name
          @emails = emails
          @entitlements = entitlements
          @external_id = external_id
          @groups = groups
          @id = id
          @ims = ims
          @locale = locale
          @meta = meta
          @name = name
          @nick_name = nick_name
          @password = password
          @phone_numbers = phone_numbers
          @photos = photos
          @preferred_language = preferred_language
          @profile_url = profile_url
          @roles = roles
          @schemas = schemas
          @timezone = timezone
          @title = title
          @urn_ietf_params_scim_schemas_extension_enterprise_2_0_user = urn_ietf_params_scim_schemas_extension_enterprise_2_0_user
          @urn_ietf_params_scim_schemas_extension_lattice_attributes_1_0_user = urn_ietf_params_scim_schemas_extension_lattice_attributes_1_0_user
          @urn_ietf_params_scim_schemas_extension_peakon_2_0_user = urn_ietf_params_scim_schemas_extension_peakon_2_0_user
          @user_name = user_name
          @user_type = user_type
          @x509_certificates = x509_certificates
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @active == other.active
          return false unless @addresses == other.addresses
          return false unless @display_name == other.display_name
          return false unless @emails == other.emails
          return false unless @entitlements == other.entitlements
          return false unless @external_id == other.external_id
          return false unless @groups == other.groups
          return false unless @id == other.id
          return false unless @ims == other.ims
          return false unless @locale == other.locale
          return false unless @meta == other.meta
          return false unless @name == other.name
          return false unless @nick_name == other.nick_name
          return false unless @password == other.password
          return false unless @phone_numbers == other.phone_numbers
          return false unless @photos == other.photos
          return false unless @preferred_language == other.preferred_language
          return false unless @profile_url == other.profile_url
          return false unless @roles == other.roles
          return false unless @schemas == other.schemas
          return false unless @timezone == other.timezone
          return false unless @title == other.title
          return false unless @urn_ietf_params_scim_schemas_extension_enterprise_2_0_user == other.urn_ietf_params_scim_schemas_extension_enterprise_2_0_user
          return false unless @urn_ietf_params_scim_schemas_extension_lattice_attributes_1_0_user == other.urn_ietf_params_scim_schemas_extension_lattice_attributes_1_0_user
          return false unless @urn_ietf_params_scim_schemas_extension_peakon_2_0_user == other.urn_ietf_params_scim_schemas_extension_peakon_2_0_user
          return false unless @user_name == other.user_name
          return false unless @user_type == other.user_type
          return false unless @x509_certificates == other.x509_certificates
          true
        end
      end
    end
  end
end
