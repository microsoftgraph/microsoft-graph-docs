---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookChart = {
  type: 'ColumnStacked',
  sourceData: 'A1:B1',
  seriesBy: 'Auto'
};

await client.api('/me/drive/items/{id}/workbook/worksheets/{id|name}/charts/add')
	.post(workbookChart);

```