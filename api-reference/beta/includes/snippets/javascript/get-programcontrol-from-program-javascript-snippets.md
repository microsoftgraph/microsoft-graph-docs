---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let controls = await client.api('/programs/673a7379-9c38-4f01-bd9d-4fda7260b807/controls')
	.version('beta')
	.get();

```