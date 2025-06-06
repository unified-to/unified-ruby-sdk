# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

module Crystalline
  extend T::Sig
  module MetadataFields
    extend T::Sig

    class Field
      attr_accessor :name, :type, :metadata

      def initialize(name, type, metadata)
        @name = name
        @type = type
        @metadata = metadata
      end
    end

    module ClassMethods
      extend T::Sig

      def fields
        @__fields__ = [] if @__fields__.nil?

        @__fields__
      end

      def field(field_name, type, metadata = {})
        attr_accessor field_name

        fields << Field.new(field_name, type, metadata)
      end

      def field_augmented?
        true
      end

      def unmarshal_single(field_type, value, decoder = nil)
        if field_type.instance_of?(Class) && field_type.include?(::Crystalline::MetadataFields)
          unmarshalled = field_type.from_dict(value)
          return unmarshalled
        elsif field_type.to_s == 'Object'
          # rubocop:disable Lint/SuppressedException
          begin
            value = JSON.parse(value)
          rescue TypeError, JSON::ParserError
          end
          # rubocop:enable Lint/SuppressedException
          return value
        end
        if decoder.nil?
          value
        else
          decoder.call(value)
        end
      end

      sig { params(json_obj: T.any(String, T::Hash[Symbol, String])).returns(Object) }
      def from_json(json_obj)
        begin
          d = JSON.parse(json_obj)
        rescue TypeError, JSON::ParserError
          d = json_obj
        end
        from_dict(d)
      end

      sig { params(d: T::Hash[Symbol, String]).returns(Object) }
      def from_dict(d)
        to_build = new

        fields.each do |field|
          field_type = field.type
          if T.nilable? field_type
            field_type = T.nilable_of(field_type)
          end

          key = "#{field.name}="
          lookup = field.metadata.fetch(:format_json, {}).fetch(:letter_case, nil).call
          value = d[lookup]
          
          # If field is not nilable, and the value is not in the dict, raise a KeyError
          raise KeyError, "key #{lookup} not found in hash" if value.nil? && !T.nilable?(field.type)
          # If field is nilable, and the value is not in the dict, just move to the next field
          next if value.nil?

          if T.arr? field_type
            inner_type = T.arr_of(field_type)
            unmarshalled_array = value.map { |f| unmarshal_single(inner_type, f) }
            to_build.send(key, unmarshalled_array)
          elsif T.hash? field_type
            val_type = T.hash_of(field_type)

            # rubocop:disable Style/HashTransformValues
            unmarshalled_hash = value.map { |k, v| [k, unmarshal_single(val_type, v)] }.to_h
            # rubocop:enable Style/HashTransformValues
            to_build.send(key, unmarshalled_hash)
          elsif T.union? field_type
            discriminator = field.metadata.fetch(:discriminator, nil)
            if !discriminator.nil?
              type_to_deserialize = value.fetch(discriminator)
              type_to_deserialize = T.get_union_types(field_type).find { |t| t.name.split('::').last == type_to_deserialize }              
              unmarshalled_val = Crystalline.unmarshal_json(value, type_to_deserialize)
              to_build.send(key, unmarshalled_val)
            else
              union_types = T.get_union_types(field_type)
              union_types = union_types.sort_by { |klass| Crystalline.non_nilable_attr_count(klass) }

              union_types.each do |union_type|
                begin
                  unmarshalled_val = Crystalline.unmarshal_json(value, union_type)
                  to_build.send(key, unmarshalled_val)
                rescue TypeError
                  next
                rescue NoMethodError
                  next
                rescue KeyError
                  next
                end
                break
              end
            end
          elsif field_type.instance_of?(Class) && field_type.include?(::Crystalline::MetadataFields)
            unmarshalled = Crystalline.unmarshal_json(value, field_type)
            to_build.send(key, unmarshalled)
          else
            decoder = field.metadata.fetch(:format_json, {}).fetch(:decoder, nil)
            final_value = unmarshal_single(field_type, value, decoder)
            to_build.send(key, final_value)
          end
        end

        to_build
      end
    end

    def initialize
      instance = allocate
      fields.each { |mod| instance.singleton_class.include(mod) }
      instance.send(:initialize)
    end

    def self.included(base)
      base.extend(ClassMethods)
    end

    def fields
      self.class.fields
    end

    def field(field_name)
      fields.each do |f|
        return f if f.name == field_name
      end
    end

    def marshal_single(field)
      if field.class.include? ::Crystalline::MetadataFields
        field.to_dict
      else
        ::Crystalline.val_to_string(field, primitives: false)
      end
    end

    def to_dict
      result = {}
      fields.sort_by(&:name).each do |field|
        f = send(field.name)
        next if f.nil?

        format_json_meta = field.metadata[:format_json]
        if !format_json_meta.nil? && format_json_meta.include?(:letter_case)
          key = format_json_meta[:letter_case].call(field.name)
        else
          key = field.name
        end
        if f.is_a? Array
          result[key] = f.map { |o| marshal_single(o) }
        elsif f.is_a? Hash
          result[key] = f.map { |k, v| [k, marshal_single(v)] }
        else
          result[key] = marshal_single(f)
        end
      end
      result
    end

    def to_json(*args)
      JSON.generate(to_dict, *args)
    end
  end


end
