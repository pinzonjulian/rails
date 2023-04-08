# frozen_string_literal: true

require "action_view/helpers/tags/checkable"

module ActionView
  module Helpers
    module Tags # :nodoc:
      class CheckBox # :nodoc:
        include Checkable
        include TagHelper

        def initialize(attributes:, unchecked_value:)
          @attributes = attributes
          @unchecked_value = unchecked_value
        end

        def render
          include_hidden = @attributes.delete("include_hidden") { true }
          checkbox = tag("input", @attributes)

          if include_hidden
            hidden = hidden_field_for_checkbox(@attributes)
            hidden + checkbox
          else
            checkbox
          end
        end

        private
          def hidden_field_for_checkbox(options)
            @unchecked_value ? tag("input", options.slice("name", "disabled", "form").merge!("type" => "hidden", "value" => @unchecked_value, "autocomplete" => "off")) : "".html_safe
          end
      end
    end
  end
end
