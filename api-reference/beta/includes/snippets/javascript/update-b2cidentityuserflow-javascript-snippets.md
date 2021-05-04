---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const b2cIdentityUserFlow = {
  isLanguageCustomizationEnabled: true,
  defaultLanguageTag: 'en',
};

await client.api('/identity/b2cUserFlows/B2C_1_CustomerSignUp')
	.version('beta')
	.update(b2cIdentityUserFlow);

```