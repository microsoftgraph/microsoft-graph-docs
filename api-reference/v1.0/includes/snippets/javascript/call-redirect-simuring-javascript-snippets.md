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
      @odata.type: "#microsoft.graph.invitationParticipantInfo",
      identity: {
        @odata.type: "#microsoft.graph.identitySet",
        user: {
          @odata.type: "#microsoft.graph.identity",
          displayName: "test user",
          id: "98da8a1a-1b87-452c-a713-65d3f10b1253"
        }
      }
    },
    {
      @odata.type: "#microsoft.graph.invitationParticipantInfo",
      identity: {
        @odata.type: "#microsoft.graph.identitySet",
        user: {
          @odata.type: "#microsoft.graph.identity",
          displayName: "test user 2",
          id: "bf5aae9a-d11d-47a8-93b1-782504c9c3f3"
        }
      }
    }
  ],
  routingPolicies: [
    "disableForwarding"
  ],
  callbackUri: "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039"
};

let res = await client.api('/communications/calls/481f0b00-ffff-4ca1-8c67-a5f1e31e8e82/redirect')
	.post(redirect);

```