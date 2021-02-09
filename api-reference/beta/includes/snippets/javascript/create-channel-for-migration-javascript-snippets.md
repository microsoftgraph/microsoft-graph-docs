---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const channel = {
  @microsoft.graph.channelCreationMode: "migration",
  displayName: "Architecture Discussion",
  description: "This channel is where we debate all future architecture plans",
  membershipType: "standard",
  createdDateTime: "2020-03-14T11:22:17.067Z"
};

let res = await client.api('/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels')
	.version('beta')
	.post(channel);

```