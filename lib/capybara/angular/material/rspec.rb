module Capybara
  module Angular
    module Material
      module RSpecMatchers
        def have_md_button(locator)
          HaveSelector.new(:xpath, "//button[contains(@class, 'md-button')]/span[normalize-space(text())='#{locator}']")
        end

        def have_md_checkbox(locator, options={})
          checked = "[@aria-checked='#{options[:checked].to_s}']" if options.has_key?(:checked)
          HaveSelector.new(:xpath, "//md-checkbox#{checked}/*/span[normalize-space(text())='#{locator}']", options.reject {|k,v| k == :checked})
        end

        def have_md_radio_button(locator, options={})
          HaveSelector.new(:xpath, "//md-radio-button/*/span[normalize-space(text())='#{locator}']")
        end
      end
    end
  end
end
