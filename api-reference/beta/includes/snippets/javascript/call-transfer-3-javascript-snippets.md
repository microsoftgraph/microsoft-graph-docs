---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const transfer = {
  transferTarget: {
    endpointType: 'default',
    identity: {
        phone: {
          '@odata.type': '#microsoft.graph.identity',
          id: '+12345678901'
        }
    },
    languageId: 'languageId-value',
    region: 'region-value'
  }
};

await client.api('/communications/calls/{id}/transfer')
	.version('beta')
	.post(transfer);

```