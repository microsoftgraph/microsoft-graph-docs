---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookRangeFont = {
  bold: true,
  color: '#4B180E',
  size: 26
};

await client.api('/me/drive/items/{id}/workbook/worksheets/Sheet1/range(address='$A$1')/format/font')
	.version('beta')
	.update(workbookRangeFont);

```