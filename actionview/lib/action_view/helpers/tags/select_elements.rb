# frozen_string_literal: true

module ActionView
  module Helpers # :nodoc:
    module Tags # :nodoc:
      module SelectElements # :nodoc:
        extend ActiveSupport::Autoload

        eager_autoload do
          autoload :Collection
          
          autoload :DateSelect
          autoload :DatetimeSelect
          autoload :Select
          autoload :TimeSelect
          autoload :TimeZoneSelect
          autoload :WeekdaySelect
        end
      end
    end
  end
end
