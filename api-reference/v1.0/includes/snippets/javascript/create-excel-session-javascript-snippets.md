---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookSessionInfo = {
  persistChanges: true
};

await client.api('/me/drive/items/{id}/workbook/createSession')
	.post(workbookSessionInfo);

```