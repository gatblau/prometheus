# Origin Server

## Overview

This roles installs OpenShift Origin from a binary file and sets it up as a systemd daemon.
Origin runs as a single cluster node on the target host.

## Context of use 

Use this role when you need to have a simple server side environment to play with Origin, where configuring external proxies, DNS and other access controls are required.

## Features
- TLS enabled docker registry
- Router
- Self-provisioning disabled
- HTPASSWD identity provider 
- Admin user and ssh keys created 

## Configuration

| Variable  | Description  | Example values |   
|:---|:---|:---|
|  ocp_uri |  The URI used to download the origin server binary file. | [https://github.com/openshift/origin/releases/download/v3.6.0](https://github.com/openshift/origin/releases/download/v3.6.0)  |   
|  ocp_root |  The name of the root folder where openshift will be installed on the target host | "/usr/local/opemshift"  |   
|  ocp_folder | The name of the openshift tarball to download without extension. | openshift-origin-server-v3.6.0-c4dd4cf-linux-64bit |
| admin_user | the user that has system:admin access to OpenShift on the host. ||

