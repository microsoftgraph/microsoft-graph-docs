---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const acquireAccessToken = {
  credentials: [
    {
      @odata.type: "microsoft.graph.synchronizationSecretKeyStringValuePair"
    }
  ]
};

let res = await client.api('/applications/{applicationsId}/synchronization/acquireAccessToken')
	.version('beta')
	.post(acquireAccessToken);

```