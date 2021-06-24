---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let memberOf = await client.api('/groups/{id}/memberOf')
	.version('beta')
	.get();

```