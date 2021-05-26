---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionGrants = await client.api('/chats/19:089ac694c48647c68035aae675cf78ab@thread.v2/permissionGrants')
	.version('beta')
	.get();

```