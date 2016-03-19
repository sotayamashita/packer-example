# Packer Example

This repository is typically for the purposes of internal testing and demonstration based on [hashicorp/best-practices](https://github.com/hashicorp/best-practices) but I'm keenly aware people are using it for theirs so You're always welcome to make suggestions, however I may decline if it's not of personal value to me :smile:


## Setup

**Required software**

* Packer (>=0.8.5) : http://packer.io
* Vagrant (>=1.7.4) : https://www.vagrantup.com/
* Virtual Box (>=5.0.2) : https://www.virtualbox.org/
* Ansible (>=1.9.2) : http://www.ansible.com/home


## Building

**Build all**

```javascript
$ packer build template.json
```

**Build VirtualBox**

```javascript
$ packer build --only=virtualbox-iso template.json
```


## Usage

**Add Vagrant box**

Give box's name you would like to use:

```javascript
$ vagrant box add <box name> /path/to/~.box
$ vagrant up
```


## Linux distribution

* CentOS 7


## Providers

* Virtual Box


## License

MIT © Sota Yamashita
