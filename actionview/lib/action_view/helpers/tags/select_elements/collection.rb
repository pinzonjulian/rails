# frozen_string_literal: true

module ActionView
  module Helpers # :nodoc:
    module Tags # :nodoc:
      module SelectElements # :nodoc:
        module Collection # :nodoc:
          extend ActiveSupport::Autoload

          eager_autoload do
            autoload :CollectionSelect
            autoload :GroupedCollectionSelect
          end
        end
      end
    end
  end
end
