# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `faraday-multipart` gem.
# Please instead update this file by running `bin/tapioca gem faraday-multipart`.

# source://faraday-multipart//lib/faraday/multipart/version.rb#3
module Faraday
  class << self
    # source://faraday/2.7.11/lib/faraday.rb#55
    def default_adapter; end

    # source://faraday/2.7.11/lib/faraday.rb#102
    def default_adapter=(adapter); end

    # source://faraday/2.7.11/lib/faraday.rb#59
    def default_adapter_options; end

    # source://faraday/2.7.11/lib/faraday.rb#59
    def default_adapter_options=(_arg0); end

    # source://faraday/2.7.11/lib/faraday.rb#120
    def default_connection; end

    # source://faraday/2.7.11/lib/faraday.rb#62
    def default_connection=(_arg0); end

    # source://faraday/2.7.11/lib/faraday.rb#127
    def default_connection_options; end

    # source://faraday/2.7.11/lib/faraday.rb#134
    def default_connection_options=(options); end

    # source://faraday/2.7.11/lib/faraday.rb#67
    def ignore_env_proxy; end

    # source://faraday/2.7.11/lib/faraday.rb#67
    def ignore_env_proxy=(_arg0); end

    # source://faraday/2.7.11/lib/faraday.rb#46
    def lib_path; end

    # source://faraday/2.7.11/lib/faraday.rb#46
    def lib_path=(_arg0); end

    # source://faraday/2.7.11/lib/faraday.rb#96
    def new(url = T.unsafe(nil), options = T.unsafe(nil), &block); end

    # source://faraday/2.7.11/lib/faraday.rb#107
    def respond_to_missing?(symbol, include_private = T.unsafe(nil)); end

    # source://faraday/2.7.11/lib/faraday.rb#42
    def root_path; end

    # source://faraday/2.7.11/lib/faraday.rb#42
    def root_path=(_arg0); end

    private

    # source://faraday/2.7.11/lib/faraday.rb#143
    def method_missing(name, *args, &block); end
  end
end

# source://faraday-multipart//lib/faraday/multipart.rb#18
Faraday::CompositeReadIO = Faraday::Multipart::CompositeReadIO

# Aliases for Faraday v1, these are all deprecated and will be removed in v2 of this middleware
#
# source://faraday-multipart//lib/faraday/multipart.rb#15
Faraday::FilePart = Multipart::Post::UploadIO

# Main Faraday::Multipart module.
#
# source://faraday-multipart//lib/faraday/multipart/version.rb#5
module Faraday::Multipart
  class << self
    # source://faraday-multipart//lib/faraday/multipart/version.rb#8
    def multipart_post_version; end
  end
end

# Similar to, but not compatible with CompositeReadIO provided by the
# multipart-post gem.
# https://github.com/nicksieger/multipart-post/blob/master/lib/composite_io.rb
#
# source://faraday-multipart//lib/faraday/multipart/file_part.rb#67
class Faraday::Multipart::CompositeReadIO
  # @return [CompositeReadIO] a new instance of CompositeReadIO
  #
  # source://faraday-multipart//lib/faraday/multipart/file_part.rb#68
  def initialize(*parts); end

  # Close each of the IOs.
  #
  # @return [void]
  #
  # source://faraday-multipart//lib/faraday/multipart/file_part.rb#111
  def close; end

  # source://faraday-multipart//lib/faraday/multipart/file_part.rb#115
  def ensure_open_and_readable; end

  # @return [Integer] sum of the lengths of all the parts
  #
  # source://faraday-multipart//lib/faraday/multipart/file_part.rb#75
  def length; end

  # Read from IOs in order until `length` bytes have been received.
  #
  # @param length [Integer, nil]
  # @param outbuf [String, nil]
  #
  # source://faraday-multipart//lib/faraday/multipart/file_part.rb#91
  def read(length = T.unsafe(nil), outbuf = T.unsafe(nil)); end

  # Rewind each of the IOs and reset the index to 0.
  #
  # @return [void]
  #
  # source://faraday-multipart//lib/faraday/multipart/file_part.rb#82
  def rewind; end

  private

  # source://faraday-multipart//lib/faraday/multipart/file_part.rb#125
  def advance_io; end

  # source://faraday-multipart//lib/faraday/multipart/file_part.rb#121
  def current_io; end
end

# source://faraday-multipart//lib/faraday/multipart/file_part.rb#55
Faraday::Multipart::FilePart = Multipart::Post::UploadIO

# Middleware for supporting multi-part requests.
#
# source://faraday-multipart//lib/faraday/multipart/middleware.rb#8
class Faraday::Multipart::Middleware < ::Faraday::Request::UrlEncoded
  # @return [Middleware] a new instance of Middleware
  #
  # source://faraday-multipart//lib/faraday/multipart/middleware.rb#13
  def initialize(app = T.unsafe(nil), options = T.unsafe(nil)); end

  # Checks for files in the payload, otherwise leaves everything untouched.
  #
  # @param env [Faraday::Env]
  #
  # source://faraday-multipart//lib/faraday/multipart/middleware.rb#21
  def call(env); end

  # @param env [Faraday::Env]
  # @param params [Hash]
  #
  # source://faraday-multipart//lib/faraday/multipart/middleware.rb#55
  def create_multipart(env, params); end

  # Returns true if obj is an enumerable with values that are multipart.
  #
  # @param obj [Object]
  # @return [Boolean]
  #
  # source://faraday-multipart//lib/faraday/multipart/middleware.rb#44
  def has_multipart?(obj); end

  # source://faraday-multipart//lib/faraday/multipart/middleware.rb#67
  def part(boundary, key, value); end

  # @param params [Hash]
  # @param prefix [String]
  # @param pieces [Array]
  #
  # source://faraday-multipart//lib/faraday/multipart/middleware.rb#83
  def process_params(params, prefix = T.unsafe(nil), pieces = T.unsafe(nil), &block); end

  # @param env [Faraday::Env]
  # @return [Boolean]
  #
  # source://faraday-multipart//lib/faraday/multipart/middleware.rb#32
  def process_request?(env); end

  # @return [String]
  #
  # source://faraday-multipart//lib/faraday/multipart/middleware.rb#76
  def unique_boundary; end
end

# source://faraday-multipart//lib/faraday/multipart/middleware.rb#9
Faraday::Multipart::Middleware::DEFAULT_BOUNDARY_PREFIX = T.let(T.unsafe(nil), String)

# Multipart value used to POST data with a content type.
#
# source://faraday-multipart//lib/faraday/multipart/param_part.rb#6
class Faraday::Multipart::ParamPart
  # @param value [String] Uploaded content as a String.
  # @param content_type [String] String content type of the value.
  # @param content_id [String] Optional String of this value's Content-ID.
  # @return [Faraday::ParamPart]
  #
  # source://faraday-multipart//lib/faraday/multipart/param_part.rb#12
  def initialize(value, content_type, content_id = T.unsafe(nil)); end

  # The value's content ID, if given.
  #
  # @return [String, nil]
  #
  # source://faraday-multipart//lib/faraday/multipart/param_part.rb#52
  def content_id; end

  # The value's content type.
  #
  # @return [String]
  #
  # source://faraday-multipart//lib/faraday/multipart/param_part.rb#47
  def content_type; end

  # Returns a Hash of String key/value pairs.
  #
  # @return [Hash]
  #
  # source://faraday-multipart//lib/faraday/multipart/param_part.rb#32
  def headers; end

  # Converts this value to a form part.
  #
  # @param boundary [String] String multipart boundary that must not exist in
  #   the content exactly.
  # @param key [String] String key name for this value.
  # @return [Faraday::Parts::Part]
  #
  # source://faraday-multipart//lib/faraday/multipart/param_part.rb#25
  def to_part(boundary, key); end

  # The content to upload.
  #
  # @return [String]
  #
  # source://faraday-multipart//lib/faraday/multipart/param_part.rb#42
  def value; end
end

# source://faraday-multipart//lib/faraday/multipart/file_part.rb#56
Faraday::Multipart::Parts = Multipart::Post::Parts

# source://faraday-multipart//lib/faraday/multipart/version.rb#6
Faraday::Multipart::VERSION = T.let(T.unsafe(nil), String)

# source://faraday-multipart//lib/faraday/multipart.rb#16
Faraday::ParamPart = Faraday::Multipart::ParamPart

# source://faraday-multipart//lib/faraday/multipart.rb#17
Faraday::Parts = Multipart::Post::Parts

# multipart-post v2.2.0 introduces a new class hierarchy for classes like Parts and UploadIO
# For backwards compatibility, detect the gem version and use the right class
#
# source://faraday-multipart//lib/faraday/multipart.rb#21
Faraday::UploadIO = Multipart::Post::UploadIO
