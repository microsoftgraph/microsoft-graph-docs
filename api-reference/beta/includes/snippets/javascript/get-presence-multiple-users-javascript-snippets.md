---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const presence = {
  ids: ['fa8bf3dc-eca7-46b7-bad1-db199b62afc3', '66825e03-7ef5-42da-9069-724602c31f6b']
};

await client.api('/communications/getPresencesByUserId')
	.version('beta')
	.post(presence);

```