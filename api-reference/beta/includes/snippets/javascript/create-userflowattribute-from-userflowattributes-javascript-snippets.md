---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityUserFlowAttribute = {
  displayName: "Hobby",
  description: "Your hobby",
  dataType: "string",
};

let res = await client.api('/identity/userFlowAttributes')
	.version('beta')
	.post(identityUserFlowAttribute);

```