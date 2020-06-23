---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const team = {
  template@odata.bind: "https://graph.microsoft.com/beta/teamsTemplates('standard')",
  group@odata.bind: "https://graph.microsoft.com/v1.0/groups('groupId')"
};

let res = await client.api('/teams')
	.version('beta')
	.post(team);

```