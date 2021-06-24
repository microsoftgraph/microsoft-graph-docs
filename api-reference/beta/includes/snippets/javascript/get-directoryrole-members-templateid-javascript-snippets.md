---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/directoryRoles/roleTemplateId=4a5d8f65-41da-4de4-8968-e035b65339cf/members')
	.version('beta')
	.get();

```