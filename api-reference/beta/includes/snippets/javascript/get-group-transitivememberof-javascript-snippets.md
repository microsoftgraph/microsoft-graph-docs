---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let transitiveMemberOf = await client.api('/groups/{id}/transitiveMemberOf')
	.version('beta')
	.get();

```