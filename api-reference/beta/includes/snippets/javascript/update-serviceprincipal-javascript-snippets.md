---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
  accountEnabled: true,
  addIns: [
    {
      id: "id-value",
      type: "type-value",
      properties: [
        {
          key: "key-value",
          value: "value-value"
        }
      ]
    }
  ],
  appDisplayName: "appDisplayName-value",
  appId: "appId-value",
  appOwnerOrganizationId: "appOwnerOrganizationId-value",
  appRoleAssignmentRequired: true
};

let res = await client.api('/servicePrincipals/{id}')
	.version('beta')
	.update(servicePrincipal);

```