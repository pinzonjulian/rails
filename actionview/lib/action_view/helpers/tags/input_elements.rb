# frozen_string_literal: true

module ActionView
  module Helpers # :nodoc:
    module Tags # :nodoc:
      module InputElements # :nodoc:
        extend ActiveSupport::Autoload

        eager_autoload do
          autoload :Base
          autoload :Collection
          
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
          autoload :PasswordField
          autoload :RadioButton
          autoload :RangeField
          autoload :SearchField
          autoload :TelField
          autoload :TextField
          autoload :TimeField
          autoload :UrlField
          autoload :WeekField
        end
      end
    end
  end
end
