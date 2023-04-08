# frozen_string_literal: true

module ActionView
  module Helpers # :nodoc:
    module AttributeBuilders # :nodoc:
      extend ActiveSupport::Autoload

      eager_autoload do
        autoload :Base
        autoload :CheckBox
        autoload :ColorField
        autoload :TextField
        autoload :PasswordField
      end
    end
  end
end
