# Creates a Tenant space using HTPASSWD

## Overview

This roles creates a set of namespaces representing environments for a given application.
The various namespaces (for example development, testing, demo, etc.) form the basis of a Continuous Delivery pipeline.

## Context of use 

Use this role when you need to create a tenant space that development staff can use to create their applications.

## Features
- Configurable project name
- Dev, Test and Demo namespaces by default, although they can be reconfigured as required.
- Users identity managed by HTPASSWD.
- Users of a namespace can be either in admin or basic-user roles. 
- One tenant-admin account across all namespaces.
- Auto-generated passwords of specified lengths kepts in hashed format by htpasswd.
- Resource quotas applied to each namespace.

## Configuration

| Variable  | Description  | Example values |   
|:---|:---|:---|
|  ocp_path |  The path to the origin server binary files on the target machine. | [https://github.com/openshift/origin/releases/download/v3.6.0](https://github.com/openshift/origin/releases/tag/v3.6.0)  |   
|  users |  A list of usernames to be created by htpasswd. | Users: - 'user1' - 'user 2'| 
|  namespace_size | The maxumin size of a namespace from a compute resources perspective. | 'small' or 'medium' or 'large' |
| pwd_len | The length of the auto generated password for a user. | e.g. 5|
| tenant | The configuration variable for the tenant. |
