---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversationMember = {
    @odata.type: "#microsoft.graph.aadUserConversationMember",
    roles: ["owner"],
    user@odata.bind: "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5"
};

let res = await client.api('/teams/{id}/members')
	.version('beta')
	.post(conversationMember);

```