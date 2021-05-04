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
  id: 'e811976d-83df-4cbd-8b9b-5215b18aa874',
  type: 'user',
  identitySource: 'azureActiveDirectory'
};

await client.api('/external/connections/contosohr/groups/31bea3d537902000/members')
	.version('beta')
	.post(externalGroupMember);

```