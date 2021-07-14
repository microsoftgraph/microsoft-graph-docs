---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directoryRole = await client.api('/directoryRoles/fe8f10bf-c9c2-47eb-95cb-c26cc85f1830')
	.version('beta')
	.get();

```