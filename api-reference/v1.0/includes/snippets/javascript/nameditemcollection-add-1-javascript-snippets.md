---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookNamedItem = {
  name: 'test5',
  reference: '=Sheet1!$F$15:$N$27',
  comment: 'Comment for the named item'
};

await client.api('/me/drive/items/{id}/workbook/names/add')
	.post(workbookNamedItem);

```