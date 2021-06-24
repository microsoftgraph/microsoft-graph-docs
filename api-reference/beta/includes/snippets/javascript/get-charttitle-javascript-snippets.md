---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workbookChartTitle = await client.api('/me/drive/items/{id}/workbook/worksheets/{id|name}/charts/{name}/title')
	.version('beta')
	.get();

```