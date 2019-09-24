---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookChart = {
  id: "id-value",
  height: 99,
  left: 99
};

let res = await client.api('/me/drive/items/{id}/workbook/worksheets/{id|name}/charts')
	.version('beta')
	.post(workbookChart);

```