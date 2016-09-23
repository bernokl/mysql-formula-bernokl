Vagrant.configure("2") do |config|
    ## Choose your base box
    config.vm.box_url = "berno/salt-minion-1404"
    config.vm.define "salt-minion"
    config.vm.box = "berno/salt-minion-1404"
    
    ## For masterless, mount your salt file root
    config.vm.provider "virtualbox" do |v|
    config.vm.synced_folder "salt/", "/srv", owner: "root", group: "root"
      v.customize ["modifyvm", :id, "--memory", "1024"]
    end
# I know you can forward ports and stuff, this is just much easier    
    config.vm.network "private_network", ip: "192.168.50.100"
## this clears out the minion_id so it gets re-populated
    config.vm.provision :shell do |shell|
      shell.inline = "rm -f /etc/salt/minion_id"
    end


    ## Use all the defaults:
    config.vm.provision :salt do |salt|

      salt.minion_config = "salt/salt-configs/minion"
      salt.install_master = false
      salt.verbose = true
      salt.log_level = "warning"
# This will run our highstate on "vagrant up" but will also rerun the highstate on "vagrant provision". This way we can edit a file and rerun the highstate with one command from outside of the vm
      salt.run_highstate = true
# Specify salt version to install, their develop branch can be crap.. this is the last major release      
      salt.install_type = "git"
      salt.install_args = "v2016.3.2"

    end
  end
