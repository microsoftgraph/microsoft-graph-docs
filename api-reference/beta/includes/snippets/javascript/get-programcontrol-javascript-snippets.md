---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let programControls = await client.api('/programControls')
	.version('beta')
	.get();

```