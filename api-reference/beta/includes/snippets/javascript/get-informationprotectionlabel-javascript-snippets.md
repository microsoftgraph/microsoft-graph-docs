---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let informationProtectionLabel = await client.api('/me/informationprotection/policy/labels/{id}')
	.version('beta')
	.get();

```