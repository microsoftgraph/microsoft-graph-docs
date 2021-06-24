---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let addresses = await client.api('/me/profile/addresses')
	.version('beta')
	.get();

```