---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let personWebsite = await client.api('/me/profile/websites/{id}')
	.version('beta')
	.get();

```