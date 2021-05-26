---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let contacts = await client.api('/contacts')
	.version('beta')
	.get();

```