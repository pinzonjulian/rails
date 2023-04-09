# frozen_string_literal: true

module ActionView
  module Helpers # :nodoc:
    module AttributeBuilders # :nodoc:
      extend ActiveSupport::Autoload

      eager_autoload do
        autoload :Base
        autoload :CheckBox
        autoload :ColorField
        autoload :DateField
        autoload :DatetimeField
        autoload :DatetimeLocalField
        autoload :EmailField
        autoload :FileField
        autoload :HiddenField
        autoload :MonthField
        autoload :NumberField
        autoload :SearchField
        autoload :TelField
        autoload :TextField
        autoload :TimeField
        autoload :PasswordField
        autoload :RangeField
        autoload :UrlField
        autoload :WeekField
      end
    end
  end
end
