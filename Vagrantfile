VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "centos65"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box"
  config.vm.network :forwarded_port, guest: 8080, host: 58080
  config.vm.hostname = 'vagrant-alfresco'
  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb,override|
    vb.customize ["modifyvm", :id, "--memory", 1536]
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/site.yml"
  end 
end
