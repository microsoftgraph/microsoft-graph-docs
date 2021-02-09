---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  @odata.id: "https://graph.microsoft.com/v1.0/directoryObjects/{user-id}"
};

let res = await client.api('/directoryRoles/roleTemplateId={role-templateId}/members/$ref')
	.post(directoryObject);

```