---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const call = {
  @odata.type: "#microsoft.graph.call",
  callbackUri: "https://bot.contoso.com/callback",
  source: {
    @odata.type: "#microsoft.graph.participantInfo",
    identity: {
      @odata.type: "#microsoft.graph.identitySet",
      application: {
        @odata.type: "#microsoft.graph.identity",
        displayName: "Calling Bot",
        id: "2891555a-92ff-42e6-80fa-6e1300c6b5c6"
      }
    },
    region: null,
    languageId: null
  },
  targets: [
    {
      @odata.type: "#microsoft.graph.invitationParticipantInfo",
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
  ],
 mediaConfig: {
    @odata.type: "#microsoft.graph.appHostedMediaConfig",
    blob: "<Media Session Configuration>"
  }
};

let res = await client.api('/communications/calls')
	.post(call);

```