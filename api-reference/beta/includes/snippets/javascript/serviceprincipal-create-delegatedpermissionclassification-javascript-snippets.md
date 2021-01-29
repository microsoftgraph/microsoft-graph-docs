---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const delegatedPermissionClassification = {
  permissionId: "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
  permissionName: "User.Read",
  classification: "low"
};

let res = await client.api('/servicePrincipals/{id}/delegatedPermissionClassifications')
	.version('beta')
	.post(delegatedPermissionClassification);

```