---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workbookRangeSort = await client.api('/me/drive/items/{id}/workbook/names/{name}/range/sort')
	.get();

```