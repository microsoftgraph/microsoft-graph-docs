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
    'id-value1',
    'id-value2'
  ]
};

await client.api('/security/tiIndicators/deleteTiIndicators')
	.version('beta')
	.post(resultInfo);

```