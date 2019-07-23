---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const Call = {
  callbackUri: "https://bot.contoso.com/callback",
  mediaConfig: {
    @odata.type: "#microsoft.graph.serviceHostedMediaConfig"
  },
  targets: [
    {
      @odata.type: "#microsoft.graph.participantInfo",
      identity: {
        @odata.type: "#microsoft.graph.identitySet",
        user: {
          @odata.type: "#microsoft.graph.identity",
          displayName: "John",
          id: "112f7296-5fa4-42ca-bae8-6a692b15d4b8"
        }
      }
    }
  ],
  requestedModalities: [
    "audio"
  ]
};

let res = await client.api('/app/calls')
	.version('beta')
	.post({Call : Call});

```