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
        end
      end
    end
  end
end
