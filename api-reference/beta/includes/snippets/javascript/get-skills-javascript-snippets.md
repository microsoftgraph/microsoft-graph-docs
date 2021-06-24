---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let skills = await client.api('/me/profile/skills')
	.version('beta')
	.get();

```