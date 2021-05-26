---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookRange = {
values: [['Hello', '100'],['1/1/2016', null]],
formulas: [[null, null], [null, '=B1*2']],
numberFormat: [[null,null], ['m-ddd', null]]
};

await client.api('/me/drive/items/{id}/workbook/worksheets/sheet1/range(address='A1:B2')')
	.version('beta')
	.update(workbookRange);

```