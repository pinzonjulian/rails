# frozen_string_literal: true

module ActionView
  module Helpers # :nodoc:
    module Tags # :nodoc:
      extend ActiveSupport::Autoload

      autoload :SelectRenderer

      eager_autoload do
        autoload :Base
        autoload :Translator
        autoload :CheckBox
        autoload :CollectionCheckBoxes
        autoload :CollectionRadioButtons
        autoload :CollectionSelect
        autoload :DateSelect
        autoload :DatetimeSelect
        autoload :FileField
        autoload :GroupedCollectionSelect
        autoload :Label
        autoload :RadioButton
        autoload :RangeField
        autoload :Select
        autoload :TextArea
        autoload :TextField
        autoload :TimeSelect
        autoload :TimeZoneSelect
        autoload :WeekdaySelect
      end
    end
  end
end
