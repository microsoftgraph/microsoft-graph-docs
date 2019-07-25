---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/schema')
	.version('beta')
	.header('Authorization','Bearer {Token}')
	.get();

```