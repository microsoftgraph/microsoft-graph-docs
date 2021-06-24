---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const calculate = {
  calculationType: 'calculationType-value'
};

await client.api('/me/drive/items/{id}/workbook/application/calculate')
	.version('beta')
	.post(calculate);

```