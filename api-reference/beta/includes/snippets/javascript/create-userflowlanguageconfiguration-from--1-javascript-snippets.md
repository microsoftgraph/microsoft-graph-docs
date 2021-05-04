---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userFlowLanguageConfiguration = {
  id: 'es-ES',
  isEnabled: true
};

await client.api('/identity/b2cUserFlows/B2C_1_CustomerSignUp/languages/es-ES')
	.version('beta')
	.put(userFlowLanguageConfiguration);

```