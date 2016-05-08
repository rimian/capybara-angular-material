module Capybara
  module Angular
    module Material
      module Node
        module Actions
          def md_check(locator)
            find(:xpath, "//md-checkbox/*/span[normalize-space(text())='#{locator}']").click
          end

          def md_uncheck(locator)
            find(:xpath, "//md-checkbox/*/span[normalize-space(text())='#{locator}']").click
          end

          def md_select(value, options={})
            # trigger('click') prevents an overlapping element error.
            find(:xpath, "//md-select/md-select-value/span[not(@class)][text()='#{options[:from]}']").trigger('click')
            expect(page).to have_no_selector(:xpath, select_md_text_xpath)
            find(
              :xpath,
              %{
              //div[    contains(@class, 'md-active')\
                    and contains(@class, 'md-clickable')\
                    and contains(@class, 'md-select-menu-container')]\
              /*/md-content/md-option[@value='#{value}']}
            ).trigger('click')
            expect(page).to have_selector(:xpath, select_md_text_xpath)
          end

          private

          def select_md_text_xpath
            "//md-select-value/span/*[contains(@class, 'md-text')]"
          end
        end
      end
    end
  end
end
