# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      class GroupedCollectionSelect < RendererBase # :nodoc:
        include SelectRenderer
        include FormOptionsHelper

        # def initialize(object_name, method_name, template_object, collection, group_method, group_label_method, option_key_method, option_value_method, options, html_options)
        def initialize(attributes:, object:, method_name:, template_object:, collection:, group_method:, group_label_method:, option_key_method:, option_value_method:,  options:)
          @collection          = collection
          @group_method        = group_method
          @group_label_method  = group_label_method
          @option_key_method   = option_key_method
          @option_value_method = option_value_method
          @html_options        = attributes
          @options             = options

          super(attributes: attributes, object: object, method_name: method_name, template_object: template_object)
        end

        def render
          option_tags_options = {
            selected: @options.fetch(:selected) { @html_options["value"] },
            disabled: @options[:disabled]
          }

          select_content_tag(
            option_groups_from_collection_for_select(@collection, @group_method, @group_label_method, @option_key_method, @option_value_method, option_tags_options), @options, @html_options
          )
        end
      end
    end
  end
end
