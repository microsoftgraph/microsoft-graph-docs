---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userFlowApiConnectorConfiguration = await client.api('/identity/b2cUserFlows/B2C_1_testuserflow/apiConnectorConfiguration')
	.version('beta')
	.expand('postAttributeCollection')
	.get();

```