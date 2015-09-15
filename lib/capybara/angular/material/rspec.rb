module Capybara
  module Angular
    module Material
      module RSpecMatchers
        include Capybara::RSpecMatchers

        def have_md_checkbox(*args)
          have_selector('md-checkbox', :text => args[1])
        end
      end
    end
  end
end
