# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      class CollectionSelect < RendererBase # :nodoc:
        include SelectRenderer
        include FormOptionsHelper

        def initialize(attributes:, object:, method_name:, template_object:, collection:, value_method:, text_method:, options:)
          @collection   = collection
          @value_method = value_method
          @text_method  = text_method
          @html_options = attributes
          @options = options

          super(attributes: attributes, object: object, method_name: method_name, template_object: template_object)
        end

        def render
          option_tags_options = {
            selected: @options.fetch(:selected) { @html_options["value"] },
            disabled: @options[:disabled]
          }

          select_content_tag(
            options_from_collection_for_select(@collection, @value_method, @text_method, option_tags_options),
            @options, @html_options
          )
        end
      end
    end
  end
end
