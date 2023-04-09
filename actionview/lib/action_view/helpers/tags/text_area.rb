# frozen_string_literal: true

require "action_view/helpers/tags/placeholderable"

module ActionView
  module Helpers
    module Tags # :nodoc:
      class TextArea < RendererBase # :nodoc:
        def render
          content_tag("textarea", @attributes.delete("value"), @attributes)
        end
      end
    end
  end
end
