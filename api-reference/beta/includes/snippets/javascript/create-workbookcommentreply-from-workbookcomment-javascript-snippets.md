---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookCommentReply = {
  content: 'This is my reply to the comment.',
  contentType: 'plain'
};

await client.api('/drive/items/{id}/workbook/comments/{id}/replies')
	.version('beta')
	.post(workbookCommentReply);

```