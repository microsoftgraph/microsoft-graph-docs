---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awards = await client.api('/me/profile/awards')
	.version('beta')
	.get();

```