---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const printerShare = {
  displayName: 'PrinterShare Name',
  'printer@odata.bind': 'https://graph.microsoft.com/v1.0/print/printers/{printerId}',
  allowAllUsers: false
};

await client.api('/print/shares/{printerShareId}')
	.update(printerShare);

```