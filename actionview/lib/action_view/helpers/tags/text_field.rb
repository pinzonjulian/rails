# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags
      class TextField < RendererBase
        include Helpers::ActiveModelInstanceTag, Helpers::TagHelper
        
        def render
          tag("input", @attributes)
        end
      end
    end
  end
end