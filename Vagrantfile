Vagrant.configure("2") do |config|
    ## Choose your base box
    config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    config.vm.define "salt-minion"
    config.vm.box = "trusty"
    
    ## For masterless, mount your salt file root
    config.vm.provider "virtualbox" do |v|
    config.vm.synced_folder "salt/", "/srv", owner: "root", group: "root"
      v.customize ["modifyvm", :id, "--memory", "1024"]
    end

    ## Use all the defaults:
    config.vm.provision :salt do |salt|

      salt.minion_config = "salt/salt-configs/minion"
      salt.run_highstate = true

    end
  end
