[example-badge]: https://img.shields.io/badge/Example-infra-orange.svg?style=flat-square
[example-link]:  https://github.com/search?utf8=%E2%9C%93&q=example%2Buser%3Asotayamashita&type=Repositories&ref=searchresults

[![Example Badge][example-badge]][example-link]

# packer-example

This repository is typically for the purposes of internal testing and demonstration based on [hashicorp/best-practices](https://github.com/hashicorp/best-practices) to build Amazon EC2 (AMI), Docker and VirtualBox but I'm keenly aware people are using it for theirs so You're always welcome to make suggestions, however I may decline if it's not of personal value to me :smile:


## Setup

**Required software**

* Packer (>=0.8.5) : http://packer.io
* Vagrant (>=1.7.4) : https://www.vagrantup.com/
* Virtual Box (>=5.0.2) : https://www.virtualbox.org/


## Building

**Build AWS**

```javascript
$ cd packer
$ packer build --only=amazon-ebs ./packer/aws/base.json
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

Run `release` script:

```javascript
$ ./utils/release.sh
```


## Linux distribution

* CentOS 7


## Providers

* [ ] Amazon EC2 (AMI)
* [ ] Docker
* [x] VirtualBox


## License

MIT © Sota Yamashita
