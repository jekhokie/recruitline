# Simplecov configuration
SimpleCov.start 'rails' do
  add_filter "/spec/"
  add_filter "/app/channels"
  add_filter "/app/jobs"
  add_filter "/app/mailers"
  add_filter "/config/"
  add_filter "/vendor/"
  add_filter "Rakefile"

  add_group "Models",      "app/models"
  add_group "Views",       "app/views"
  add_group "Controllers", "app/controllers"
  add_group "Helpers",     "app/helpers"
  add_group "Libraries",   "lib"
  add_group "Rake Tasks",  "lib/tasks"
end
