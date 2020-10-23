---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const changeScreenSharingRole = {
  role: "viewer"
};

let res = await client.api('/communications/calls/{id}/changeScreenSharingRole')
	.version('beta')
	.post(changeScreenSharingRole);

```