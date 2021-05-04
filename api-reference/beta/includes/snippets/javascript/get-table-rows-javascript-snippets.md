---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let rows = await client.api('/me/drive/items/{id}/workbook/tables/{id|name}/rows')
	.version('beta')
	.skip(5)
	.top(5)
	.get();

```