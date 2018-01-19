module Capybara
  module Angular
    module Material
      module Node
        module Actions
          def md_check(locator)
            find(:xpath, "//md-checkbox/*/*[normalize-space(text())='#{locator}']").click
          end

          def md_uncheck(locator)
            find(:xpath, "//md-checkbox/*/*[normalize-space(text())='#{locator}']").click
          end

          def md_select(value, options={})
            # trigger('click') prevents an overlapping element error.
            find(:xpath, "//md-select/md-select-value/*[not(@class)][text()='#{options[:from]}']").trigger('click')
            find(
              :xpath,
              %{
              //div[    contains(@class, 'md-active')\
                    and contains(@class, 'md-clickable')\
                    and contains(@class, 'md-select-menu-container')]\
              /*/md-content/md-option[@value='#{value}']}
            ).trigger('click')
          end

          private

          def select_md_text_xpath
            "//md-select-value/*/*[contains(@class, 'md-text')]"
          end
        end
      end
    end
  end
end
