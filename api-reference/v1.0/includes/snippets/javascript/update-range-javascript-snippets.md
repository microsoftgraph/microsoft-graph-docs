---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookRange = {
"values" : [["Hello", "100"],["1/1/2016", null]],
"formula" : [[null, null], [null, "=B1*2"]],
"numberFormat" : [[null,null], ["m-ddd", null]]
};

let res = await client.api('/me/drive/items/{id}/workbook/worksheets/{sheet-id}/range(address='A1:B2')')
	.update(workbookRange);

```