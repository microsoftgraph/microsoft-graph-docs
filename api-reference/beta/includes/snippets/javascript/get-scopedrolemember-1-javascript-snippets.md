---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let scopedRoleMembership = await client.api('/administrativeUnits/{id}/scopedRoleMembers/{id}')
	.version('beta')
	.get();

```