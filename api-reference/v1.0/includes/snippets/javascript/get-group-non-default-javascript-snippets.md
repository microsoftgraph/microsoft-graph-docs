---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/groups/b320ee12-b1cd-4cca-b648-a437be61c5cd')
	.select('allowExternalSenders,autoSubscribeNewMembers,isSubscribedByMail,unseenCount')
	.get();

```