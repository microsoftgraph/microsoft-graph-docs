---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let entries = await client.api('/admin/windows/updates/catalog/entries')
	.version('beta')
	.get();

```