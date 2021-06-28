---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityApiConnector = { };

await client.api('/identity/b2cUserFlows/B2C_1_testuserflow/apiConnectorConfiguration/postAttributeCollection/$ref')
	.version('beta')
	.put(identityApiConnector);

```