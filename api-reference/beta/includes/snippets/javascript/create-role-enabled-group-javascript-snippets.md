---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  description: "Group assignable to a role",
  displayName: "Role assignable group",
  groupTypes: [
    "Unified"
  ],
  isAssignableToRole: true,
  mailEnabled: true,
  securityEnabled: true,
  mailNickname: "contosohelpdeskadministrators",
  "visibility" : "Private"
};

let res = await client.api('/groups')
	.version('beta')
	.post(group);

```