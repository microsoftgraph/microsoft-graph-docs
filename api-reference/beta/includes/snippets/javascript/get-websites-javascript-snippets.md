---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let websites = await client.api('/me/profile/websites')
	.version('beta')
	.get();

```