# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      class Select < RendererBase # :nodoc:
        include SelectRenderer
        include FormOptionsHelper

        def initialize(attributes:, object:, method_name:, template_object:, choices:, options:)
          @choices = block_given? ? template_object.capture { yield || "" } : choices
          @choices = @choices.to_a if @choices.is_a?(Range)

          @html_options = attributes
          @options = options
          super(attributes: @html_options, object: object, method_name: method_name, template_object: template_object)
        end

        def render
          select_content_tag(option_tags, @options, @html_options)
        end

        private
          # Grouped choices look like this:
          #
          #   [nil, []]
          #   { nil => [] }
          def grouped_choices?
            !@choices.blank? && @choices.first.respond_to?(:second) && Array === @choices.first.second
          end

          def option_tags
            value = @html_options["value"]
            option_tags_options = {
              selected: @options.fetch(:selected) { value.nil? ? "" : value },
              disabled: @options[:disabled]
            }
  
            if grouped_choices?
              grouped_options_for_select(@choices, option_tags_options)
            else
              options_for_select(@choices, option_tags_options)
            end
          end
      end
    end
  end
end
