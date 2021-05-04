---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let anniversaries = await client.api('/me/profile/anniversaries')
	.version('beta')
	.get();

```