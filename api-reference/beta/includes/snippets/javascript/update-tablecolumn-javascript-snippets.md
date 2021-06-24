---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookTableColumn = {
  name: 'name-value',
  index: 99,
  values: 'values-value'
};

await client.api('/me/drive/items/{id}/workbook/tables/{id|name}/columns/{id|name}')
	.version('beta')
	.update(workbookTableColumn);

```