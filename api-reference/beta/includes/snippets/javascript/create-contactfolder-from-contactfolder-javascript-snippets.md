---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contactFolder = {
  displayName: "displayName-value"
};

let res = await client.api('/me/contactFolders/{id}/childFolders')
	.version('beta')
	.post(contactFolder);

```