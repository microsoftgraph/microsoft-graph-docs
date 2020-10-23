---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookFormatProtection = {
  locked: true,
  formulaHidden: true
};

let res = await client.api('/me/drive/items/{id}/workbook/names/{name}/range/format/protection')
	.update(workbookFormatProtection);

```