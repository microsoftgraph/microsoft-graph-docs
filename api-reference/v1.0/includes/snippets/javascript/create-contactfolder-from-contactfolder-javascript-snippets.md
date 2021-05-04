---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contactFolder = {
  displayName: 'Family'
};

await client.api('/me/contactFolders/{id}/childFolders')
	.post(contactFolder);

```