---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookTable = {
  address: 'Sheet1!A1:D5',
  hasHeaders: true
};

await client.api('/me/drive/items/{id}/workbook/tables/add')
	.post(workbookTable);

```