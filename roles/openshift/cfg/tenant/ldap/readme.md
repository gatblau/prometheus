# Creates a Tenant space using HTPASSWD

## Overview

This roles creates a set of namespaces representing environments for a given application.
The various namespaces (for example development, testing, demo, etc.) form the basis of a Continuous Delivery pipeline.

## Context of use 

Use this role when you need to create a tenant space that development staff can use to create their applications.

## Features
- Configurable project name
- Dev, Test and Demo namespaces by default, although they can be reconfigured as required.
- Users identity managed by LDAP.

## Configuration

| Variable  | Description  | Example values |   
|:---|:---|:---|
