# frozen_string_literal: true

module ActionView
  module Helpers
    module Tags # :nodoc:
      module SelectRenderer # :nodoc:
        private
          def select_content_tag(option_tags, options, html_options)
            value = html_options.delete("value")
            select = content_tag("select", add_options(option_tags, options, value), html_options)

            if html_options["multiple"] && options.fetch(:include_hidden, true)
              tag("input", disabled: html_options["disabled"], name: html_options["name"], type: "hidden", value: "", autocomplete: "off") + select
            else
              select
            end
          end


          def add_options(option_tags, options, value = nil)
            if options[:include_blank]
              content = (options[:include_blank] if options[:include_blank].is_a?(String))
              label = (" " unless content)
              option_tags = tag_builder.content_tag_string("option", content, value: "", label: label) + "\n" + option_tags
            end

            if value.blank? && options[:prompt]
              tag_options = { value: "" }.tap do |prompt_opts|
                prompt_opts[:disabled] = true if options[:disabled] == ""
                prompt_opts[:selected] = true if options[:selected] == ""
              end
              option_tags = tag_builder.content_tag_string("option", prompt_text(options[:prompt]), tag_options) + "\n" + option_tags
            end

            option_tags
          end
      end
    end
  end
end
