---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityApiConnector = await client.api('/identity/apiConnectors/{id}')
	.version('beta')
	.get();

```