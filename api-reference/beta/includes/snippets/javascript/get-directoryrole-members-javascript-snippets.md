---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/directoryRoles/23f3b4b4-8a29-4420-8052-e4950273bbda/members')
	.version('beta')
	.get();

```