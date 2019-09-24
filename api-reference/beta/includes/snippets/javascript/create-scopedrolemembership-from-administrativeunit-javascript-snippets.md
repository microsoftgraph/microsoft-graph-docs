---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const scopedRoleMembership = {
  roleId: "roleId-value",
  roleMemberInfo: {
    id: "id-value"
  }
};

let res = await client.api('/administrativeUnits/{id}/scopedRoleMembers')
	.version('beta')
	.post(scopedRoleMembership);

```