---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const replyAll = {
  comment: "comment-value"
};

let res = await client.api('/me/messages/{id}/replyAll')
	.post(replyAll);

```