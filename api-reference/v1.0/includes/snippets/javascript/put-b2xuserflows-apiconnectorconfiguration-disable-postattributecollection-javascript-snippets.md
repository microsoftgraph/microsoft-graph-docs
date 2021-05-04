---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityApiConnector = { };

await client.api('/identity/b2xUserFlows/B2X_1_testuserflow/apiConnectorConfiguration/postAttributeCollection/$ref')
	.put(identityApiConnector);

```