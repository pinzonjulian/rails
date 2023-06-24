# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      module InputElements # :nodoc:
        class PasswordField < TextField # :nodoc:
          def render
            @options = { value: nil }.merge!(@options)
            super
          end
        end
      end
    end
  end
end