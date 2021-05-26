---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryRole = {
  roleTemplateId: 'roleTemplateId-value'
};

await client.api('/directoryRoles')
	.post(directoryRole);

```