# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      module InputElements # :nodoc:
        class HiddenField < TextField # :nodoc:
          def render
            @options[:autocomplete] = "off"
            super
          end
        end
      end
    end
  end
end