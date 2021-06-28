---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryRole = {
  roleTemplateId: 'fe930be7-5e62-47db-91af-98c3a49a38b1'
};

await client.api('/directoryRoles')
	.version('beta')
	.post(directoryRole);

```