Vagrant.configure("2") do |config|
  config.vm.box = "OL74"
  config.vm.box_url = "http://yum.oracle.com/boxes/oraclelinux/ol74/ol74.box"
  config.vm.hostname = "battlestation"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "12288"
  end
  config.ssh.insert_key = false
end
