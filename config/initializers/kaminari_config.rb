# frozen_string_literal: true
Kaminari.configure do |config|
   config.default_per_page = 10
  # config.max_per_page = nil
   config.window = 3
   config.outer_window = 2
  # config.left = 0
  # config.right = 0
  # config.page_method_name = :page
  # config.param_name = :page
  # config.params_on_first_page = false
end
