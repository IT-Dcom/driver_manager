# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network :forwarded_port, guest: 22, host: 2224, id: 'ssh'
  config.vm.network :private_network, ip: "192.168.50.3"

  config.vm.network :forwarded_port, guest: 3000,  host: 3000 #rails server

  if defined?(VagrantVbguest::Middleware)
    config.vbguest.auto_update = false
  end

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--cpus", "1", "--memory", "1028"] #best practice for vagrant is to use 1/4 of the host's memory
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"] #solve Windows Symbolic links issues
  end

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    sudo locale-gen fr_FR.UTF-8
    sudo apt-get install -y mysql-client libmysqlclient-dev

    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 || curl -sSL https://rvm.io/mpapis.asc | gpg --import -
    curl -sSL https://get.rvm.io | bash -s stable --ruby

    sudo apt-get install nodejs

    source /home/vagrant/.rvm/scripts/rvm
    rvm install ruby-2.2.4
    gem install bundler
    cd /vagrant
    bundle install

    echo "alias servup='bundle exec rails server -p 3000 -b 0.0.0.0'" >> /home/vagrant/.bashrc
  SHELL
end
