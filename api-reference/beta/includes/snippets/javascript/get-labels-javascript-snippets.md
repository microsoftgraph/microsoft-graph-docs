---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let labels = await client.api('/me/informationProtection/policy/labels')
	.version('beta')
	.get();

```