---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let contactFolder = await client.api('/me/contactFolders/{id}')
	.get();

```