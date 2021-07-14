---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let scopedMembers = await client.api('/directoryRoles/41d12a2f-caa8-4e3e-ba14-05e5102ce085/scopedMembers')
	.version('beta')
	.get();

```