---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const restart = {
   criteria: {
       resetScope: 'Watermark, Escrows, QuarantineState'
   }
};

await client.api('/servicePrincipals/{id}/synchronization/jobs/{jobId}/restart')
	.version('beta')
	.post(restart);

```