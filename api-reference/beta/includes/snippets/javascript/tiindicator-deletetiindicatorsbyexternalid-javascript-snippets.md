---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const resultInfo = {
  value: [
    'externalId-value1',
    'externalId-value2'
  ]
};

await client.api('/security/tiIndicators/deleteTiIndicatorsByExternalId')
	.version('beta')
	.post(resultInfo);

```