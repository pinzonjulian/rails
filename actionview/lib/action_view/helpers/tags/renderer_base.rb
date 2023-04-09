# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags
      class RendererBase
        include Helpers::ActiveModelInstanceTag, Helpers::TagHelper
        
        attr_reader :object
        
        def initialize(attributes:, object:, method_name:, template_object:)
          @attributes = attributes
          @object = object
          @template_object = template_object
          @method_name = method_name.to_s.dup
        end
        
        def render
          raise NotImplementedError, "Subclasses must implement a render method"
        end
      end
    end
  end
end