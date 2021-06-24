---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let contact = await client.api('/me/contacts/AAMkAGI2THk0AAA=')
	.version('beta')
	.get();

```