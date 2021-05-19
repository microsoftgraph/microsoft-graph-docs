---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printerShare = {
  displayName: 'ShareName',
  allowAllUsers: true,
  'printer@odata.bind': 'https://graph.microsoft.com/beta/print/printers/{id}'
};

await client.api('/print/shares/{id}')
	.version('beta')
	.update(printerShare);

```