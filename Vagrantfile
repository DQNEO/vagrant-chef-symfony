# -*- mode: ruby -*-
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/centos-7.1"
  config.omnibus.chef_version = :latest

  config.vbguest.auto_update = false

  config.vm.network :private_network, ip: "10.10.10.11"

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["./cookbooks", "./site-cookbooks"]
    chef.json = JSON.parse(File.read("./nodes/vagrant.json"));
  end

end
