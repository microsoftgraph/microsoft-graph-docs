---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/directoryRoles/{role-objectId}/members/{user-id}/$ref')
	.delete();

```