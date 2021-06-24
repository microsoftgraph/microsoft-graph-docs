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
  'group@odata.bind': 'https://graph.microsoft.com/beta/groups(\'71392b2f-1765-406e-86af-5907d9bdb2ab\')'
};

await client.api('/teams')
	.version('beta')
	.post(team);

```