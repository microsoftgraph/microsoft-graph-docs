---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accept = {
  comment: 'comment-value',
  sendResponse: true
};

await client.api('/me/events/{id}/accept')
	.version('beta')
	.post(accept);

```