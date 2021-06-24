---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const closeSession = {

};

await client.api('/me/drive/items/{id}/workbook/closeSession')
	.post(closeSession);

```