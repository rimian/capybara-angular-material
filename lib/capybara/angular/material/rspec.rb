module Capybara
  module Angular
    module Material
      module RSpecMatchers
        def have_md_button(locator)
          HaveSelector.new(:xpath, "//button[contains(@class, 'md-button')]/span[normalize-space(text())='#{locator}']")
        end

        def have_md_checkbox(locator, options={})
          HaveSelector.new(:xpath, "//md-checkbox#{aria_checked(options)}/*/span[normalize-space(text())='#{locator}']")
        end

        def have_md_radio_button(locator, options={})
          HaveSelector.new(:xpath, "//md-radio-button#{aria_checked(options)}/*/span[normalize-space(text())='#{locator}']")
        end

        private

        def aria_checked(options)
          "[@aria-checked='#{options[:checked].to_s}']" if options.has_key?(:checked)
        end
      end
    end
  end
end
