Build Vagrant Box:

```bash
$ packer build --only=virtualbox-iso packer.json
```

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
