---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignments = await client.api('/roleManagement/cloudPC/roleAssignments')
	.version('beta')
	.filter('roleDefinitionId eq \'b5c08161-a7af-481c-ace2-a20a69a48fb1\'')
	.get();

```