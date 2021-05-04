---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directoryObject = await client.api('/directoryObjects/{id}')
	.version('beta')
	.get();

```