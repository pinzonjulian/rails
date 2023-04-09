# frozen_string_literal: true

require "action_view/helpers/tags/checkable"

module ActionView
  module Helpers
    module Tags # :nodoc:
      class RadioButton < RendererBase # :nodoc:
        def render
          tag("input", @attributes)
        end
      end
    end
  end
end
