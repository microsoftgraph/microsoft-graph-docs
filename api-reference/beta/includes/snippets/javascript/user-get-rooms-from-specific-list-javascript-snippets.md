---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let findRooms = await client.api('/me/findRooms(RoomList='Building2Rooms@contoso.onmicrosoft.com')')
	.version('beta')
	.get();

```