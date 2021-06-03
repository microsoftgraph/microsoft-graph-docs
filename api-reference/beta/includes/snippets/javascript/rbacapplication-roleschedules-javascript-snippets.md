---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleSchedules = await client.api('/roleManagement/directory/roleSchedules(directoryScopeId='a3bb8764-cb92-4276-9d2a-ca1e895e55ea',appScopeId='a3bb8764-cb92-4276-9d2a-ca1e895e55ea',principalId='a3bb8764-cb92-4276-9d2a-ca1e895e55ea',roleDefinitionId='a3bb8764-cb92-4276-9d2a-ca1e895e55ea')')
	.version('beta')
	.get();

```