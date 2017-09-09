## Deployment Manifest

This role creates a deployment manifest on a managed host.  It is designed to be run both in a `site.yml` file and within a role.

When running in a `site.yml` file, use the following syntax:

  - { role: lib/manifest, configuration: "cfg_name" }

This will run the `tasks/main.yml` play which will create the deployment manifest on the managed host (default location is `/usr/local/manifest/manifest.yml`) and add the name of the configuration, to the manifest, with a date-time stamp.  
This should always be run first on a managed host to ensure that the deployment manifest is created.

When run within a role, use the `include_role` module as follows:

`- include_role:` </br>
&nbsp;&nbsp;&nbsp;&nbsp;`    name: lib/manifest` </br>
&nbsp;&nbsp;&nbsp;&nbsp;`    tasks_from: "task_name"`</br>
&nbsp;&nbsp;&nbsp;&nbsp;`vars:`</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`variable: value`

### Tasks

Tasks and any required parameters are shown in the following table.


| Task | Parameters |
|----------|----------|
| add-deployment | **deployment**: string stating the application name, version, etc. |
| add-port | **app_name**: name of the app to add port numbers to.</br> **app_port**: port number  |
| increment-deployment | none |
| main | **configuration**: name of configuration being run |
