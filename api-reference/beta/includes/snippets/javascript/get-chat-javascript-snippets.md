---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let chat = await client.api('/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats/19:8b081ef6-4792-4def-b2c9-c363a1bf41d5_877192bd-9183-47d3-a74c-8aa0426716cf@unq.gbl.spaces')
	.version('beta')
	.get();

```