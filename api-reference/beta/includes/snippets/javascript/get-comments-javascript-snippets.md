---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let comments = await client.api('/drive/items/{id}/workbook/comments')
	.version('beta')
	.get();

```