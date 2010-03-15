Haml::Template.options = { :attr_wrapper => '"' }
Sass::Plugin.options = { :template_location => "#{RAILS_ROOT}/public/sass", 
                         :css_location => "#{RAILS_ROOT}/public/stylesheets" }
if "production" == Rails.env                         
  Sass::Plugin.options[:never_update] = true 
else
  Sass::Plugin.update_stylesheets
end