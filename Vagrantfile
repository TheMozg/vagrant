Vagrant.configure("2") do |config|
  config.vm.define "ubuntu_node", autostart: false do |node|
      node.vm.network "forwarded_port",
        guest: 22,
        host: 2222,
        host_ip: "0.0.0.0",
        id: "ssh"
  end
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.hostname = "battlestation"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "12288"
    vb.customize ['modifyvm', :id, '--cableconnected1', 'on']
  end
  config.ssh.insert_key = false
end
