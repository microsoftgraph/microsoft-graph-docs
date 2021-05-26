---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalGroupMember = {
  '@odata.type': '#microsoft.graph.externalGroupMember',
  id: 'e5477431-1038-484e-bf69-1dfedb97a110',
  type: 'group',
  identitySource: 'azureActiveDirectory'
};

await client.api('/external/connections/contosohr/groups/31bea3d537902000/members')
	.version('beta')
	.post(externalGroupMember);

```