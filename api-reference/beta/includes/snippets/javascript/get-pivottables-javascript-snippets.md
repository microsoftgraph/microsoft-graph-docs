---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let pivotTables = await client.api('/drive/root/workbook/worksheets/{id}/pivotTables')
	.version('beta')
	.get();

```