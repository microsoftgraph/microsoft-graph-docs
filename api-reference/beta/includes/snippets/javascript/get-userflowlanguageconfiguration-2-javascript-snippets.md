---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let languages = await client.api('/identity/b2xUserFlows/B2X_1_PartnerSignUp/languages')
	.version('beta')
	.get();

```