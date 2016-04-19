Vagrant.configure(2) do |config|
    config.vm.box = "hashicorp/precise32"
    config.vm.hostname = "nginx-sandbox"


    config.vm.network "forwarded_port", guest: 80, host: 8080, id: "nginx"

    config.vm.provider "virtualbox" do |vb|
        # Display the VirtualBox GUI when booting the machine
        vb.gui = false
        vb.name = "nginx sandbox"

        # Customize the amount of memory on the VM:
        # vb.memory = 1024

        # Customize the number of CPUs available to the VM:
        # vb.cpus = 2
    end

    config.vm.provision "bootstrap", type: "shell", path: "./provision/bootstrap.sh"
    config.vm.provision "oh-my-zsh", type: "shell", path: "./provision/oh-my-zsh.sh"

    end
