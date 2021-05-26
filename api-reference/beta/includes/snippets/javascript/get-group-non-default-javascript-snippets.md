---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let group = await client.api('/groups/b320ee12-b1cd-4cca-b648-a437be61c5cd')
	.version('beta')
	.select('allowExternalSenders,autoSubscribeNewMembers,isSubscribedByMail,unseenCount')
	.get();

```