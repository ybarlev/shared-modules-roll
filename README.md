# shared-modules roll

## Overview

This roll adds an option to use shared modules found on /shared/apps/modulefiles

## Building

```shell
% make 2>&1 | tee build.log
```

A successful build will create the file `*.disk1.iso`.  If you built the
roll on a Rocks frontend, proceed to the installation step. If you built the
roll on a Rocks development appliance, you need to copy the roll to your Rocks
frontend before continuing with installation.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll shared-modules
% cd /export/rocks/install
% rocks create distro
% rocks run roll shared-modules | bash
```
