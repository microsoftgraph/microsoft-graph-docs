---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let emails = await client.api('/me/profile/emails')
	.version('beta')
	.get();

```