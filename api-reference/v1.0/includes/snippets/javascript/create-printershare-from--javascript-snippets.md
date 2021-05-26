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
  allowAllUsers: false,
  'printer@odata.bind': 'https://graph.microsoft.com/v1.0/print/printers/{printerId}'
};

await client.api('/print/shares')
	.post(printerShare);

```