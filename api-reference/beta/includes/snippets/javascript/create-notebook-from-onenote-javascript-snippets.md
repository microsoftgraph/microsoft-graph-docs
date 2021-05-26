---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const notebook = {
    displayName: 'My Private notebook'
};

await client.api('/me/onenote/notebooks')
	.version('beta')
	.post(notebook);

```