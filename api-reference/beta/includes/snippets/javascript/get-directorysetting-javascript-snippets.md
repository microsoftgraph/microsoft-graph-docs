---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directorySetting = await client.api('/settings/{id}')
	.version('beta')
	.get();

```