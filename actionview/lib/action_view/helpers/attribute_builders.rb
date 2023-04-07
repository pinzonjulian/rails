# frozen_string_literal: true

module ActionView
  module Helpers # :nodoc:
    module AttributeBuilders # :nodoc:
      extend ActiveSupport::Autoload

      eager_autoload do
        autoload :Base
        autoload :TextField
      end
    end
  end
end
