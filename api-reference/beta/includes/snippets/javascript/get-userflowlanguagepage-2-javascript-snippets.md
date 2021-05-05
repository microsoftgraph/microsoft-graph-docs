---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let overridesPages = await client.api('/identity/b2cUserFlows/B2C_1_Customer/languages/en/overridesPages')
	.version('beta')
	.get();

```