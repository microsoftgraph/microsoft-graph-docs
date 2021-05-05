---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let rows = await client.api('/drive/root/workbook/worksheets/{id}/range(address='A1:Z10')/visibleView/rows')
	.version('beta')
	.get();

```