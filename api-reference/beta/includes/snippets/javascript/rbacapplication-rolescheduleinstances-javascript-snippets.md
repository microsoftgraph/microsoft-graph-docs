---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleScheduleInstances = await client.api('/roleManagement/directory/roleScheduleInstances(directoryScopeId='parameterValue',appScopeId='parameterValue',principalId='parameterValue',roleDefinitionId='parameterValue')')
	.version('beta')
	.get();

```