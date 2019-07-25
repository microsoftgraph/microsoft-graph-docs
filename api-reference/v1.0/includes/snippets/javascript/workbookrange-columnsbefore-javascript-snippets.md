---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/drive/root/workbook/worksheets/{id}/range/columnsBefore(count=2)')
	.post();

```