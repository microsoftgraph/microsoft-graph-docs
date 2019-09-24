---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleDefinition = {
  description: "Update basic properties of application registrations",
  displayName: "Application Registration Support Administrator",
  rolePermissions:
    [
        {
            allowedResourceActions: 
            [
                "microsoft.directory/applications/basic/read"
            ]
        }
    ]
};

let res = await client.api('/roleManagement/directory/roleDefinitions/0d55728d-3e24-4309-9b1b-5ac09921475a')
	.version('beta')
	.update(unifiedRoleDefinition);

```