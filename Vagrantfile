Vagrant.configure("2") do |config|
  [1, 2, 3, 4].each do |index|
    _name = "node_#{index}"
    config.vm.define _name, autostart: false do |node|
        node.vm.network "forwarded_port",
          guest: 22,
          host: "222#{index}",
          host_ip: "0.0.0.0",
          id: "ssh"
    end
  end

  config.vm.box = "battlestation/OL7"
  config.vm.box_url = "http://yum.oracle.com/boxes/oraclelinux/ol74/ol74.box"
  config.vm.hostname = "battlestation"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "12288"
  end
  config.ssh.insert_key = false
end
