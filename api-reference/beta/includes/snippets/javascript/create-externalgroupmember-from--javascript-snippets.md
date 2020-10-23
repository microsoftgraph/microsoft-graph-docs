---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalGroupMember = {
  @odata.type: "#microsoft.graph.externalGroupMember",
  id: "1431b9c38ee647f6a",
  type: "group",
  identitySource: "external"
};

let res = await client.api('/external/connections/contosohr/groups/31bea3d537902000/members')
	.version('beta')
	.post(externalGroupMember);

```