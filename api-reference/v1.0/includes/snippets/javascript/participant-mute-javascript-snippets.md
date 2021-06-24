---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const muteParticipantOperation = {
  clientContext: 'd45324c1-fcb5-430a-902c-f20af696537c'
};

await client.api('/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/participants/2765eb15-01f8-47c6-b12b-c32111a4a86f/mute')
	.post(muteParticipantOperation);

```