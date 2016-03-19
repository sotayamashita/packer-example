#!/bin/bash

# Detect vagrant
if type packer >/dev/null 2>&1; then
  PACKER_VERSION=`packer version | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
fi
# Vagrant
if type packer >/dev/null 2>&1; then
  VAGRANT_VERSION=`vagrant version | awk 'NR==1' | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
fi
# virtual Box
if type vboxmanage > /dev/null 2>&1; then
	VIRTUALBOX_VERSION=`vboxmanage --version | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
fi

# Build VirtualBox
packer build --only=virtualbox-iso template.json

# Attach box to release note


# Clean up
if type trash >/dev/null 2>&1; then
	trash box
	echo "Clean up"
fi



