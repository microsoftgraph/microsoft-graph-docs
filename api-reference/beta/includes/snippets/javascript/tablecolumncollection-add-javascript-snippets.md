---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookTableColumn = {
  index: {
  },
  values: [
    {
    }
  ]
};

let res = await client.api('/me/drive/items/{id}/workbook/tables/{id|name}/columns/add')
	.version('beta')
	.post(workbookTableColumn);

```