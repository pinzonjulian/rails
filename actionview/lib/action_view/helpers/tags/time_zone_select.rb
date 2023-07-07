# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      class TimeZoneSelect < RendererBase # :nodoc:
        include SelectRenderer
        include FormOptionsHelper

        def initialize(attributes:, object:, method_name:, template_object:, priority_zones:, options:)
          @priority_zones = priority_zones
          @html_options = attributes
          @options = options
          super(attributes: @html_options, object: object, method_name: method_name, template_object: template_object)
        end


        def render
          select_content_tag(
            time_zone_options_for_select(@html_options["value"] || @options[:default], @priority_zones, @options[:model] || ActiveSupport::TimeZone), @options, @html_options
          )
        end
      end
    end
  end
end
