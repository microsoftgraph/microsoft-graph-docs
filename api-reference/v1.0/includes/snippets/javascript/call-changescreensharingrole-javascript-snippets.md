---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const changeScreenSharingRole = {
  role: 'viewer'
};

await client.api('/communications/calls/{id}/changeScreenSharingRole')
	.post(changeScreenSharingRole);

```