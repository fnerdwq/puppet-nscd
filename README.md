#puppet-nscd

####Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What Nscd affects](#what-nscd-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with Nscd](#beginning-with-Nscd)
4. [Usage](#usage)
5. [Limitations](#limitations)
6. [TODOs](#TODOs)

##Overview

This small nscd module manages the nscd service.

Written for Puppet >= 3.4.0.

##Module Description

See [Overview](#overview) for now.

##Setup

###What Nscd affects

* nscd :-) 

###Setup Requirements

Nothing special.
	
###Beginning with Nscd	

Simply include it.

##Usage

Just include the module by 

```puppet
include nscd
```

Configure it through hiera or declare it resource-like with the parameters set, e.g.:

```puppet
class { 'nscd':
  ...
}
```

##Limitations:

Debian like systems. 
Tested on:

* Debian 7

Puppet Version >= 3.4.0, due to specific hiera usage.

##TODOs:

* make it work on RedHat like systems.
* make it configureble
* make it work with puppet pre 3.4 
