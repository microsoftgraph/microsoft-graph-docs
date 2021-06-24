---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contentType = {
  contentType: 'https://graph.microsoft.com/beta/sites/id/contentTypes/0x0101'
};

await client.api('/sites/id/lists/{list-id}/contentTypes/addCopy')
	.version('beta')
	.post(contentType);

```