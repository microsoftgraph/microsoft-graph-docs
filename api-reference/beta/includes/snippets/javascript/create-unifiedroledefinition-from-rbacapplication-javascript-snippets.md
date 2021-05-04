---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleDefinition = {
  description: 'Update basic properties of application registrations',
  displayName: 'Application Registration Support Administrator',
  rolePermissions: 
    [
        {
            allowedResourceActions: 
            [
                'microsoft.directory/applications/basic/read'
            ]
        }
    ],
    isEnabled: 'true'
};

await client.api('/roleManagement/directory/roleDefinitions')
	.version('beta')
	.post(unifiedRoleDefinition);

```