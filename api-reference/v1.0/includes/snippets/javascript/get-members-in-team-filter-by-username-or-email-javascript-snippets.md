---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/teams/ee0f5ae2-8bc6-4ae5-8466-7daeebbfa062/members')
	.filter('(microsoft.graph.aadUserConversationMember/displayName eq \'Harry Johnson\' or microsoft.graph.aadUserConversationMember/email eq \'admin@M365x987948.OnMicrosoft.com\')')
	.get();

```