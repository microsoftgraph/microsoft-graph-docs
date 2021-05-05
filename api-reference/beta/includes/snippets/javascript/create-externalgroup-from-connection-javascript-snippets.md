---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalGroup = {
  '@odata.type': '#microsoft.graph.externalGroup',
  id: '31bea3d537902000',
  displayName: 'Contoso Marketing',
  description: 'The product marketing team'
};

await client.api('/external/connections/contosohr/groups')
	.version('beta')
	.post(externalGroup);

```