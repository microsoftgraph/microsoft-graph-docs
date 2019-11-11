---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const calendarPermission = {
  emailAddress: {
    name: "My Organization",
  },
  isRemovable: true,
  isInsideOrganization: true,
  role: "write",
  allowedRoles: [
    "none",
    "freeBusyRead",
    "limitedRead",
    "read",
    "write"
  ],
  id: "RGVmYXVsdA=="
};

let res = await client.api('/users/{id}/calendar/calendarPermissions/{id}')
	.version('beta')
	.update(calendarPermission);

```