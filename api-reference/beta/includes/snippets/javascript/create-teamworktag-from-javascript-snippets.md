---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamworkTag = {
  displayName: 'Finance',
  members: [
	{
		userId: '92f6952f-61ca-4a94-8910-508a240bc167'
	},
	{
		userId: '085d800c-b86b-4bfc-a857-9371ad1caf29'
	}
  ]
};

await client.api('/teams/53c53217-fe77-4383-bc5a-ed4937a1aecd/tags')
	.version('beta')
	.post(teamworkTag);

```