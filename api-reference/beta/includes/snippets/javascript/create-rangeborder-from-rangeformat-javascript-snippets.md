---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookRangeBorder = {
  id: 'id-value',
  color: 'color-value',
  style: 'style-value',
  sideIndex: 'sideIndex-value',
  weight: 'weight-value'
};

await client.api('/me/drive/items/{id}/workbook/names/{name}/range/format/borders')
	.version('beta')
	.post(workbookRangeBorder);

```