---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let positions = await client.api('/me/profile/positions')
	.version('beta')
	.get();

```