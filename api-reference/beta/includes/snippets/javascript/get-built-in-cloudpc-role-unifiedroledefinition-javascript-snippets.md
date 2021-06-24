---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRoleDefinition = await client.api('/roleManagement/cloudPC/roleDefinitions/d40368cb-fbf4-4965-bbc1-f17b3a78e510')
	.version('beta')
	.get();

```