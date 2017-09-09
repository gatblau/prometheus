# Configures a virtual machine so that it can be used to download, scan and sign public images 
## Overview

This roles configures a virtual machine with the tools required to download, scan and sign a docker image from a public repository, before uploading it to a master registry.

## Context of use

Development teams wants to have the freedom to use any image from a public repository. However, there is a risk such images are not secure.
To mitigate such issues, this role provides a separate virtual machine whic can be used to download, verify and sign a public immage before it is pushed itno a trusted master registry.

## Features


## Configuration

