---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activateService = {
    skuId: '6fd2c87f-b296-42f0-b197-1e91e994b900',
    servicePlanId: 'a23b959c-7ce8-4e57-9140-b90eb88a9e97'
};

await client.api('/organization/{:organizationId}/activateService')
	.version('beta')
	.post(activateService);

```