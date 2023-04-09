# frozen_string_literal: true

module ActionView
  module Helpers # :nodoc:
    module Tags # :nodoc:
      extend ActiveSupport::Autoload

      autoload :SelectRenderer

      eager_autoload do
        autoload :Base
        autoload :RendererBase

        autoload :Translator
        autoload :CheckBox
        autoload :CollectionCheckBoxes
        autoload :CollectionRadioButtons
        autoload :CollectionSelect
        autoload :ColorField
        autoload :DateField
        autoload :DatetimeField
        autoload :DateSelect
        autoload :DatetimeSelect
        autoload :EmailField
        autoload :FileField
        autoload :GroupedCollectionSelect
        autoload :HiddenField
        autoload :Label
        autoload :MonthField
        autoload :NumberField
        autoload :PasswordField
        autoload :RadioButton
        autoload :RangeField
        autoload :SearchField
        autoload :Select
        autoload :TelField
        autoload :TextArea
        autoload :TextField
        autoload :TimeField
        autoload :TimeSelect
        autoload :TimeZoneSelect
        autoload :UrlField
        autoload :WeekField
        autoload :WeekdaySelect

        autoload :TextField
      end
    end
  end
end
