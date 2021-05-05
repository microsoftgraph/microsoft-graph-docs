---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedRoles = await client.api('/privilegedRoles')
	.version('beta')
	.get();

```