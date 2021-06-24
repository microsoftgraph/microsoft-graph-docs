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
  },
  clientContext: '9e90d1c1-f61e-43e7-9f75-d420159aae08'
};

await client.api('/communications/calls/{id}/transfer')
	.post(transfer);

```