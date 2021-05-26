---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workbookComment = await client.api('/drive/items/{id}/workbook/comments/{id}')
	.get();

```