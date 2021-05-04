---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printConnector = await client.api('/print/connectors/{printConnectorId}')
	.get();

```