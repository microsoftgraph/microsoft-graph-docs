---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcOnPremisesConnection = await client.api('/deviceManagement/virtualEndpoint/onPremisesConnections/{id}')
	.version('beta')
	.select('id,displayName,healthCheckStatus,healthCheckStatusDetails,inUse')
	.get();

```