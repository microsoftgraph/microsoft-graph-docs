---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignments = await client.api('/roleManagement/directory/roleAssignments')
	.version('beta')
	.filter('roleDefinitionId eq \'62e90394-69f5-4237-9190-012177145e10\'')
	.expand('principal')
	.get();

```