---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookChartSeries = {
  index: {
  }
};

await client.api('/me/drive/items/{id}/workbook/worksheets/{id|name}/charts/{name}/series/ItemAt')
	.version('beta')
	.post(workbookChartSeries);

```