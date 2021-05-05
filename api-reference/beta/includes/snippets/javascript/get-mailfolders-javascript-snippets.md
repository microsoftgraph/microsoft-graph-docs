---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mailFolders = await client.api('/me/mailFolders')
	.version('beta')
	.get();

```