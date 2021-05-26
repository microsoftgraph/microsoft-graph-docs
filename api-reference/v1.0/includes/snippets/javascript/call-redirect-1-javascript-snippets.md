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
        application: {
          '@odata.type': '#microsoft.graph.identity',
          displayName: 'test bot 2',
          id: '22bfd41f-550e-477d-8789-f6f7bd2a5e8b'
        }
      }
    }
  ],
  callbackUri: 'https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039'
};

await client.api('/communications/calls/491f0b00-ffff-4bc9-a43e-b226498ec22a/redirect')
	.post(redirect);

```