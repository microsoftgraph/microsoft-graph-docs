---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let languages = await client.api('/me/profile/languages')
	.version('beta')
	.get();

```