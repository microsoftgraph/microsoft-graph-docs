---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let audioRoutingGroups = await client.api('/communications/calls/{id}/audioRoutingGroups')
	.version('beta')
	.get();

```