---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contactFolder = {
  parentFolderId: 'parentFolderId-value',
  displayName: 'displayName-value'
};

await client.api('/me/contactFolders/{id}')
	.update(contactFolder);

```