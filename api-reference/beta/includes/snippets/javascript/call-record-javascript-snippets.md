---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const recordOperation = {
  bargeInAllowed: true,
  clientContext: "d45324c1-fcb5-430a-902c-f20af696537c",
  prompts: [
    {
      @odata.type: "#microsoft.graph.mediaPrompt",
      mediaInfo: {
        uri: "https://cdn.contoso.com/beep.wav",
        resourceId: "1D6DE2D4-CD51-4309-8DAA-70768651088E"
      }
    }
  ],
  maxRecordDurationInSeconds: 10,
  initialSilenceTimeoutInSeconds: 5,
  maxSilenceTimeoutInSeconds: 2,
  playBeep: true,
  stopTones: [ "#", "1", "*" ]
};

let res = await client.api('/communications/calls/{id}/record')
	.version('beta')
	.post(recordOperation);

```