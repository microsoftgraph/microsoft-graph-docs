---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const channel = {
  @odata.type: "#Microsoft.Graph.channel",
  membershipType: "private",
  displayName: "My First Private Channel",
  description: "This is my first private channels",
  members:
     [
        {
           @odata.type:"#microsoft.graph.aadUserConversationMember",
           user@odata.bind:"https://graph.microsoft.com/beta/users('{user_id}')",
           roles:["owner"]
        }
     ]
};

let res = await client.api('/teams/{group_id}/channels')
	.version('beta')
	.post(channel);

```