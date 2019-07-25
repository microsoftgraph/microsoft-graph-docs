---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/drive/items/{id}/workbook/names/{name}/range/cell(row=5,column=6)')
	.get();

```