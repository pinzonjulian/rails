# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      class Label < Base # :nodoc:
        class LabelBuilder # :nodoc:
          attr_reader :object

          def initialize(object_name, method_name, object, tag_value)
            @object_name = object_name
            @method_name = method_name
            @object = object
            @tag_value = tag_value
          end

          def translation
            method_and_value = @tag_value.present? ? "#{@method_name}.#{@tag_value}" : @method_name

            content ||= Translator
              .new(object, @object_name, method_and_value, scope: "helpers.label")
              .translate
            content ||= @method_name.humanize

            content
          end

          def to_s
            translation
          end
        end

        def initialize(object_name, method_name, template_object, content = nil, options = nil, object: nil)
          @content = content
          options.merge!(object: object)
          super(object_name, method_name, template_object, options)
        end

        def render(&block)
          tag_value = @options.delete("value")
          builder = LabelBuilder.new(@object_name, @method_name, @object, tag_value)

          content = if block_given?
            @template_object.capture(builder, &block)
          elsif @content.present?
            @content.to_s
          else
            render_component(builder)
          end
          
          label_tag(@options["id"], content, @options)
        end

        private
          def render_component(builder)
            builder.translation
          end
      end
    end
  end
end
