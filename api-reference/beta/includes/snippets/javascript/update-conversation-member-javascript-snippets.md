---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversationMember = {
  @odata.type:"#microsoft.graph.aadUserConversationMember",
  roles: ["owner"]
};

let res = await client.api('/teams/{id}/channels/{id}/members/{id}')
	.version('beta')
	.update(conversationMember);

```