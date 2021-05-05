---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const redirect = {
  targets: [
    {
      '@odata.type': '#microsoft.graph.invitationParticipantInfo',
      identity: {
        '@odata.type': '#microsoft.graph.identitySet',
        phone: {
          '@odata.type': '#microsoft.graph.identity',
          id: '+12345678901'
        }
      }
    }
  ],
  callbackUri: 'https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039'
};

await client.api('/communications/calls/491f0b00-ffff-4bc9-a43e-b226498ec22a/redirect')
	.version('beta')
	.post(redirect);

```