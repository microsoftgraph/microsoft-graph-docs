---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activateServicePlan = {
  servicePlanId: '28f42d6f-8034-4a0f-9d8a-a218a63b3299',
  skuId: '465a2a90-5e59-456d-a7b8-127b9fb2e484'
};

await client.api('/me/activateServicePlan')
	.version('beta')
	.post(activateServicePlan);

```