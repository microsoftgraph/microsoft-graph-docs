---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const CommsOperation = {
  clientContext: "d45324c1-fcb5-430a-902c-f20af696537c",
  prompts: [
    {
      @odata.type: "#microsoft.graph.mediaPrompt",
      mediaInfo: {
        uri: "https://cdn.contoso.com/beep.wav",
        resourceId: "1D6DE2D4-CD51-4309-8DAA-70768651088E"
      },
      loop: 5
    }
  ]
};

let res = await client.api('/app/calls/{id}/playPrompt')
	.version('beta')
	.post(CommsOperation);

```