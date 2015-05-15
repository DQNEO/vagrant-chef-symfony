include_recipe 'apache2'

directory "/srv/myapp" do
  owner "vagrant"
end

file "/srv/myapp/hello.php" do
  owner "vagrant"
  content "<?php echo 'hello php version' . PHP_VERSION;"
end

web_app 'myapp' do
  template 'myapp.conf.erb'
  server_name 'vagrantphp'
  docroot '/srv/myapp'
  env 'development'
end
