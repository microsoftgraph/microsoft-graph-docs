---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookRangeBorder = {
  index: {
  }
};

await client.api('/me/drive/items/{id}/workbook/names/{name}/range/format/borders/ItemAt')
	.version('beta')
	.post(workbookRangeBorder);

```