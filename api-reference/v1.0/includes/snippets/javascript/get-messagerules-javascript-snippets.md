---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let messageRules = await client.api('/me/mailFolders/inbox/messageRules')
	.get();

```