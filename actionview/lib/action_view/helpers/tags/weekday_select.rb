# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      class WeekdaySelect < RendererBase # :nodoc:
        include SelectRenderer
        include FormOptionsHelper

        def initialize(attributes:, object:, method_name:, template_object:, options:)
          @html_options = attributes
          @options = options
          super(attributes: @html_options, object: object, method_name: method_name, template_object: template_object)
        end

        def render
          select_content_tag(
            weekday_options_for_select(
              @html_options["value"] || @options[:selected],
              index_as_value: @options.fetch(:index_as_value, false),
              day_format: @options.fetch(:day_format, :day_names),
              beginning_of_week: @options.fetch(:beginning_of_week, Date.beginning_of_week)
            ),
            @options,
            @html_options
          )
        end
      end
    end
  end
end
