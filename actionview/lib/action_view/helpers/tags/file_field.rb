# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      class FileField # :nodoc:
        include TagHelper

        def initialize(attributes:)
          @attributes = attributes
        end
        
        def render
          include_hidden = @attributes.delete("include_hidden")

          if @attributes["multiple"] && include_hidden
            hidden_field_for_multiple_file(@attributes) + input_field
          else
            input_field
          end
        end

        private
          def input_field
            tag("input", @attributes)
          end

          def hidden_field_for_multiple_file(attributes)
            tag("input", "name" => attributes["name"], "type" => "hidden", "value" => "", "autocomplete" => "off")
          end
      end
    end
  end
end
