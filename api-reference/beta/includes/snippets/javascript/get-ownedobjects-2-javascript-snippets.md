---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let ownedObjects = await client.api('/me/ownedObjects')
	.version('beta')
	.get();

```