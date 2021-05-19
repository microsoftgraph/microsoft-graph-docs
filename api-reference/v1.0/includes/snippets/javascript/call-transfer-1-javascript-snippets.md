---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const transfer = {
  transferTarget: {
    endpointType: 'default',
    identity: {
      user: {
        id: '550fae72-d251-43ec-868c-373732c2704f',
        displayName: 'Heidi Steen'
      }
    },
    replacesCallId: 'replacesCallId-value'
  }
};

await client.api('/communications/calls/{id}/transfer')
	.post(transfer);

```