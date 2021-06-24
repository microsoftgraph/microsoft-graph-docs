---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const team = {
  'template@odata.bind': 'https://graph.microsoft.com/beta/teamsTemplates(\'standard\')',
  displayName: 'My Sample Team',
  description: 'My Sample Team’s Description'
};

await client.api('/teams')
	.version('beta')
	.post(team);

```