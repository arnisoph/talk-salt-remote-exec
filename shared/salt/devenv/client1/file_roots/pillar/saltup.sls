# pip install linode-python
# salt-call -l debug state.sls salt.cloud,git,zsh,users test=False
# yum install salt-cloud

# salt-cloud --list-images=linode01
# salt-cloud -l debug -p linode_1024 minion1
# salt-cloud --map /vagrant/shared/misc/salt-cloud/map1.yaml --parallel --hard
# salt-cloud --map /vagrant/shared/misc/salt-cloud/map1.yaml --parallel --destroy --assume-yes
# ssh -lroot -i /vagrant/shared/misc/salt-cloud/test-vagrant-salt-talk <MINION_IP>

salt:
  lookup:
    cloud:
      config:
        cloud:
          config:
            pool_size: 15
            enable_hard_maps: true
cloud:
  update_cachedir: True
  diff_cache_events: True
  change_password: True
  providers:
    linode01:
      provider: linode
      ssh_key_file: /vagrant/shared/misc/salt-cloud/test-vagrant-salt-talk
  profiles:
    linode_1024_centos_lon:
      provider: linode01
      size: Linode 1024
      image: CentOS 7
      location: London, England, UK
      script_args: -M -K stable
      private_ip: true
      minion:
        master: li1371-29.members.linode.com
    linode_1024_debian_lon:
      provider: linode01
      size: Linode 1024
      image: Debian 7
      location: London, England, UK
      script_args: -M -K stable
      private_ip: true
      minion:
        master: li1371-29.members.linode.com
    linode_1024_gentoo_lon:
      provider: linode01
      size: Linode 1024
      image: Gentoo 2014.12
      location: london
      script_args: -M -K stable
      private_ip: true
      minion:
        master: li1371-29.members.linode.com
    linode_1024_fedora_lon:
      provider: linode01
      size: Linode 1024
      image: Fedora 22
      location: london
      script_args: -M -K stable
      private_ip: true
      minion:
        master: li1371-29.members.linode.com
    linode_1024_arch_lon:
      provider: linode01
      size: Linode 1024
      image: Arch Linux 2015.02
      location: London, England, UK
      script_args: -M -K stable
      private_ip: true
      minion:
        master: li1371-29.members.linode.com
    linode_1024_opensuse_lon:
      provider: linode01
      size: Linode 1024
      image: openSUSE 13.2
      location: london
      script_args: -M -K stable
      private_ip: true
      minion:
        master: li1371-29.members.linode.com
