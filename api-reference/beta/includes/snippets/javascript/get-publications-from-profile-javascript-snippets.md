---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let publications = await client.api('/me/profile/publications')
	.version('beta')
	.get();

```