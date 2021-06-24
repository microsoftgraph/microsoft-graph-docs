---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let personAward = await client.api('/me/profile/awards/{id}')
	.version('beta')
	.get();

```