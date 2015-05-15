include_recipe 'apache2'

web_app 'myapp' do
  template 'myapp.conf.erb'
  docroot '/srv/myapp'
  env 'development'
end
