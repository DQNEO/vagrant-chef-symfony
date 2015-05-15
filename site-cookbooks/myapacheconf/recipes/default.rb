include_recipe 'apache2'

web_app 'myapp' do
  template 'myapp.conf.erb'
  server_name 'myapp.local'
  docroot '/srv/myapp'
  env 'development'
end
