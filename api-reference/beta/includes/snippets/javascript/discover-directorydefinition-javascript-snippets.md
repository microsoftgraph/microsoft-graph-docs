---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema/directories/{directoryId}/discover')
	.version('beta')
	.post();

```