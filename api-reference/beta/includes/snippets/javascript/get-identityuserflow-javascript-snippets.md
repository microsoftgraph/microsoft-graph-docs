---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/identity/userFlows/B2C_1_Pol1')
	.version('beta')
	.get();

```