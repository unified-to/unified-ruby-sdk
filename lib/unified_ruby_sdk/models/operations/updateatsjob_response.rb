# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class UpdateAtsJobResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # HTTP response content type for this operation
        field :content_type, ::String
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, ::Faraday::Response
        # HTTP response status code for this operation
        field :status_code, ::Integer
        # Successful
        field :ats_job, T.nilable(Models::Shared::AtsJob)


        sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, ats_job: T.nilable(Models::Shared::AtsJob)).void }
        def initialize(content_type: nil, raw_response: nil, status_code: nil, ats_job: nil)
          @content_type = content_type
          @raw_response = raw_response
          @status_code = status_code
          @ats_job = ats_job
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @content_type == other.content_type
          return false unless @raw_response == other.raw_response
          return false unless @status_code == other.status_code
          return false unless @ats_job == other.ats_job
          true
        end
      end
    end
  end
end
