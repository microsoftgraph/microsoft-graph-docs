---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailFolder = {
  displayName: 'displayName-value',
  isHidden: true
};

await client.api('/me/mailFolders/{id}/childFolders')
	.version('beta')
	.post(mailFolder);

```