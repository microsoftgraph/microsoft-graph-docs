---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let scopedMembers = await client.api('/directoryRoles/roleTemplateId=fdd7a751-b60b-444a-984c-02652fe8fa1c/scopedMembers')
	.version('beta')
	.get();

```