# frozen_string_literal: true

require "action_view/helpers/tags/select_elements/renderable"
module ActionView
  module Helpers
    module Tags # :nodoc:
      module SelectElements # :nodoc:
        class TimeZoneSelect < Base # :nodoc:
          include Renderable

          def initialize(object_name, method_name, template_object, priority_zones, options, html_options)
            @priority_zones = priority_zones
            @html_options = html_options

            super(object_name, method_name, template_object, options)
          end

          def render
            select_content_tag(
              time_zone_options_for_select(value || @options[:default], @priority_zones, @options[:model] || ActiveSupport::TimeZone), @options, @html_options
            )
          end
        end
      end
    end
  end
end