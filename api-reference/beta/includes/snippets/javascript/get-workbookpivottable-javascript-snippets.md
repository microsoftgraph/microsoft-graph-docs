---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workbookPivotTable = await client.api('/drive/root/workbook/worksheets/{id}/pivotTables/{id}')
	.version('beta')
	.get();

```