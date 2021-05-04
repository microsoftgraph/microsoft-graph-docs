---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workbookTableColumn = await client.api('/me/drive/items/{id}/workbook/tables/{id|name}/columns/{id|name}')
	.get();

```