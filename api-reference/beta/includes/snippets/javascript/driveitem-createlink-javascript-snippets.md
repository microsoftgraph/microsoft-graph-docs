---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  type: 'view',
  scope: 'anonymous',
  password: 'String',
  recipients: [
    {
      '@odata.type': 'microsoft.graph.driveRecipient'
    }
  ]
};

await client.api('/me/drive/items/{itemId}/createLink')
	.version('beta')
	.post(permission);

```