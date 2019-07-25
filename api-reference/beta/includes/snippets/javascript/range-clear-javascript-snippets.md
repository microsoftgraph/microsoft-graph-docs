---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const clear = {
  applyTo: "applyTo-value"
};

let res = await client.api('/me/drive/items/{id}/workbook/names/{name}/range/clear')
	.version('beta')
	.post(clear);

```