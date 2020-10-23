---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const muteParticipantOperation = {
  clientContext: "clientContext-value"
};

let res = await client.api('/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/mute')
	.post(muteParticipantOperation);

```