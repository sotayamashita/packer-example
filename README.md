# Packer Example

[![][example-badge]][example]
[![][mit-badge]][mit]

:mortar_board:  Example - The goal of these packer builds is to create consistent Vagrant boxes across multiple vagrant providers, specifically for Ansible vagrant usage. Currently only Virtualbox.

These setups are typically for the purposes of internal testing and demonstration purposes and don't necessarily reflect recommended production settings.

## Setup

**Required software**

* Packer 0.8.5:http://packer.io
* Vagrant 1.7.4: https://www.vagrantup.com/
* Virtual Box 5.0.2: https://www.virtualbox.org/

## Building

**Build Vagrant Box**

```bash
$ packer build --only=virtualbox-iso template.json
```

## Inspect

```
$ packer inspect template.json
Optional variables and their defaults:

  iso_checksum      = d07ab3e615c66a8b2e9a50f4852e6a77
  iso_checksum_type = md5
  iso_name          = CentOS-7-x86_64-Minimal-1503-01
  iso_url           = http://ftp.riken.jp/Linux/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1503-01.iso
  ssh_password      = vagrant
  ssh_username      = vagrant
  version           = 0.1.0

Builders:

  virtualbox-iso

Provisioners:

  shell
```

## Linux distribution

* CentOS 7

## Providers

* Virtual Box

## Possible problems

**1\. Error mount: unknown filesystem type 'vboxsf' when `vagrant up`**

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

↓

Please see http://zow.hatenablog.com/entry/20150116/1421336024 . _Note: it is written in Japanese._

**2\. Error downloading: checksums didn't match expected when `packer build`**

```
==> virtualbox-iso: Downloading or copying ISO
    virtualbox-iso: Downloading or copying: http://ftp.riken.jp/Linux/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1503-01.iso
    virtualbox-iso: Error downloading: checksums didn't match expected: d07ab3e615c66a8b2e9a50f4852e6a76
==> virtualbox-iso: ISO download failed.
Build 'virtualbox-iso' errored: ISO download failed.
```

↓

Run:

```bash
$ md5 CentOS-7-x86_64-Minimal-1503-01.iso
MD5 (CentOS-7-x86_64-Minimal-1503-01.iso) = d07ab3e615c66a8b2e9a50f4852e6a77
```

## References

* [Packer](http://packer.io) - Official Packer page
* [Boxcutter](https://github.com/boxcutter) - Community-driven templates and tools for creating cloud, virtual machines, containers and metal operating system environments


## Acknowledgements

Inspiration and code was taken from many sources, including:

* [hashicorp/atlas-packer-vagrant-tutorial](https://github.com/hashicorp/atlas-packer-vagrant-tutorial)
* [boxcutter/centos](https://github.com/boxcutter/centos)
* [shiguredo/packer-templates](https://github.com/shiguredo/packer-templates)

## Contirbuting

Contributions are very welcome! Please have a look at [CONTRIBUTING](CONTIRBUTING.md) for guidelines.

## License

[MIT][mit] © [Sota Yamashita][me]

[example]:        https://github.com/search?utf8=%E2%9C%93&q=example%2Buser%3Asotayamashita&type=Repositories&ref=searchresults
[example-badge]:  https://img.shields.io/badge/for-example-orange.svg?style=flat-square
[mit]:            https://github.com/sotayamashita/packer-example/blob/master/LICENSE.md
[mit-badge]:      https://img.shields.io/github/license/sotayamashita/bdash.svg?style=flat-square
[me]:             https://github.com/sotayamashita
