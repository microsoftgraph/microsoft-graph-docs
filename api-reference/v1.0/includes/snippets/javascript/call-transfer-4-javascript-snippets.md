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
    '@odata.type': '#microsoft.graph.invitationParticipantInfo',
    endpointType: 'default',
    identity: {
      '@odata.type': '#microsoft.graph.identitySet',
        phone: {
          '@odata.type': '#microsoft.graph.identity',
          id: '+12345678901'
        }
    },
    languageId: 'en-us',
    region: 'amer',
    replacesCallId: 'e5d39592-99bd-4db8-bca8-30fb894ec51d'
  },
  clientContext: '9e90d1c1-f61e-43e7-9f75-d420159aae08'
};

await client.api('/communications/calls/341a0500-d4bf-4224-8b19-1581168d328b/transfer')
	.post(transfer);

```