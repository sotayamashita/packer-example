# Packer Example

:mortar_board:  Example - The goal of these packer builds is to create consistent Vagrant boxes across multiple vagrant providers, specifically for Ansible vagrant usage. Currently only Virtualbox.

These setups are typically for the purposes of internal testing and demonstration purposes and don't necessarily reflect recommended production settings.

<p align="center">
<img src="https://dl.dropboxusercontent.com/u/74344418/github-image/packer.png" width="400px">
</p>

## Setup

**Required software**

* Packer 0.8.5:http://packer.io
* Vagrant 1.7.4: https://www.vagrantup.com/
* Virtual Box 5.0.2: https://www.virtualbox.org/

## Building

**Build Vagrant Box**

```bash
$ packer build --only=virtualbox-iso packer.json
```

## Linux distribution

* CentOS 7

## Providers

* Virtual Box

## Stackoverflow

If you run `vagrant up` and get a error blow:

```
default: /vagrant => /path/to/foo.box
Failed to mount folders in Linux guest. This is usually because
the "vboxsf" file system is not available. Please verify that
the guest additions are properly installed in the guest and
can work properly. The command attempted was:

mount -t vboxsf -o uid=`id -u vagrant`,gid=`getent group vagrant | cut -d: -f3` vagrant /vagrant
mount -t vboxsf -o uid=`id -u vagrant`,gid=`id -g vagrant` vagrant /vagrant

The error output from the last command was:

mount: unknown filesystem type 'vboxsf'
```

Please see http://zow.hatenablog.com/entry/20150116/1421336024

## License

MIT © Sota Yamashita
