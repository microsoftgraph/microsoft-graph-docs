---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let skillProficiency = await client.api('/me/profile/skills/{id}')
	.version('beta')
	.get();

```