module Capybara
  module Angular
    module Material
      module RSpecMatchers
        include ::Capybara::RSpecMatchers

        def have_md_button(locator)
          HaveSelector.new(:xpath, "//button[contains(@class, 'md-button')]/span[normalize-space(text())='#{locator}']")
        end

        def have_md_checkbox(locator, options={})
          HaveSelector.new(:xpath, "//md-checkbox#{aria_checked(options)}#{ng_disabled(options)}/*/span[normalize-space(text())='#{locator}']")
        end

        def have_md_list
          HaveSelector.new(:xpath, '//md-list')
        end

        def have_md_list_item(locator)
          HaveSelector.new(:xpath, "//md-list-item[.//*[contains(text(), '#{locator}')]]")
        end

        def have_md_radio_button(locator, options={})
          HaveSelector.new(:xpath, "//md-radio-button#{aria_checked(options)}/*/span[normalize-space(text())='#{locator}']")
        end

        def have_md_select(locator, options={})
          HaveSelector.new(:xpath, "//md-select/md-select-value/span[not(@class)][text()='#{locator}']")
        end

        private

        def aria_checked(options)
          "[@aria-checked='#{options[:checked].to_s}']" if options.has_key?(:checked)
        end

        def ng_disabled(options)
          "[@ng-disabled='#{options[:disabled].to_s}']" if options.has_key?(:disabled)
        end
      end
    end
  end
end
