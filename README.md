# Packer Basic Configuration

This repository is typically for the purposes of internal testing and demonstration based on [hashicorp/best-practices](https://github.com/hashicorp/best-practices) to build Amazon EC2 (AMI), Docker and VirtualBox but I'm keenly aware people are using it for theirs so You're always welcome to make suggestions, however I may decline if it's not of personal value to me :smile:


## Setup

**Required software**

* Packer (>=0.8.5) : http://packer.io
* Vagrant (>=1.7.4) : https://www.vagrantup.com/
* Virtual Box (>=5.0.2) : https://www.virtualbox.org/


## Building

**Build all**

```javascript
$ cd packer
$ packer build template.json
```

**Build AWS**

```javascript
$ cd packer
$ packer build --only= ./packer/aws/base.json
```

**Build Docker**

```javascript
$ cd packer
$ packer build --only= ./packer/docker/base.json
```

**Build VirtualBox**

```javascript
$ cd packer
$ packer build --only=virtualbox-iso vagrant/base.json
```


## Usage

**Add Vagrant box**

Give box's name you would like to use:

```javascript
$ vagrant box add <box name> /path/to/~.box
$ vagrant up
```

## Release

Run `release` script. It will create all macine images and you can also specify what builder you release to add parameter:

```javascript
$ ./utils/release.sh
```


## Linux distribution

* CentOS 7


## Providers

* [ ] Amazon EC2 (AMI)
* [ ] Docker
* [ ] VirtualBox


## License

MIT © Sota Yamashita
