---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let contacts = await client.api('/me/contacts')
	.version('beta')
	.select('displayName,emailAddresses')
	.get();

```