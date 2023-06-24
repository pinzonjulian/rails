# frozen_string_literal: true

module ActionView
  module Helpers # :nodoc:
    module Tags # :nodoc:
      module InputElements # :nodoc:
        module Collection # :nodoc:
          extend ActiveSupport::Autoload

          eager_autoload do
            autoload :CollectionCheckBoxes
            autoload :CollectionRadioButtons
          end
        end
      end
    end
  end
end
