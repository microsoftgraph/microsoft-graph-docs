---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let functions = await client.api('/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema/functions')
	.version('beta')
	.get();

```