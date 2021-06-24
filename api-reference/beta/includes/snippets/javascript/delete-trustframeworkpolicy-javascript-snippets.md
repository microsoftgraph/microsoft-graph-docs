---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/trustFramework/policies/B2C_1A_SocialAndLocalAccounts_Base')
	.version('beta')
	.delete();

```