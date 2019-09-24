---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversationThread = {
  @odata.type:"#Microsoft.OutlookServices.ConversationThread",
  isLocked: true
};

let res = await client.api('/groups/{id}/threads/{id}')
	.update(conversationThread);

```