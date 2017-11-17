Vagrant.configure("2") do |config|
	config.vm.provider "virtualbox" do |v|
		v.memory = 2024
	end

	config.vm.box = "nrel/CentOS-6.7-x86_64"
	config.vm.synced_folder "./ansible", "/ansible"
	config.vm.network "private_network", ip: "192.168.44.15"
	config.vm.provision :shell, path: "./provision.sh"
end