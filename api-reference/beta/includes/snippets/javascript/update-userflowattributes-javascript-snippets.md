---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityUserFlowAttribute = {
  description: "Your new hobby"
};

let res = await client.api('/identity/userFlowAttributes/extension_d09380e2b4c642b9a203fb816a04a7ad_Hobby')
	.version('beta')
	.update(identityUserFlowAttribute);

```