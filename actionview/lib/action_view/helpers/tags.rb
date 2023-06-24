# frozen_string_literal: true

module ActionView
  module Helpers # :nodoc:
    module Tags # :nodoc:
      extend ActiveSupport::Autoload

      eager_autoload do
        autoload :Base
        autoload :Translator

        autoload :InputElements
        autoload :SelectElements

        autoload :Label
        autoload :TextArea
      end
    end
  end
end
