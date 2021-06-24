---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let borders = await client.api('/me/drive/items/{id}/workbook/names/{name}/range/format/borders')
	.get();

```