---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let scopedRoleMemberOf = await client.api('/me/scopedRoleMemberOf')
	.version('beta')
	.get();

```