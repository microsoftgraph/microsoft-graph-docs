---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let findRoomLists = await client.api('/me/findRoomLists')
	.version('beta')
	.get();

```