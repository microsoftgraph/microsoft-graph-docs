---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let languages = await client.api('/identity/b2cUserFlows/B2C_1_CustomerSignUp/languages')
	.version('beta')
	.get();

```