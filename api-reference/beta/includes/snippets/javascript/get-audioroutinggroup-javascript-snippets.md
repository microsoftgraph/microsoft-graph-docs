---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let audioRoutingGroup = await client.api('/communications/calls/{id}/audioRoutingGroups/{id}')
	.version('beta')
	.get();

```