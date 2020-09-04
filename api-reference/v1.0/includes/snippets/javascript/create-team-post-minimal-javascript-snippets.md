---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const team = {
  template@odata.bind: "https://graph.microsoft.com/v1.0/teamsTemplates('standard')",
  displayName: "My Sample Team",
  description: "My Sample Team’s Description",
  owners@odata.bind: [
    "https://graph.microsoft.com/v1.0/users('userId')"
  ]
};

let res = await client.api('/teams')
	.post(team);

```