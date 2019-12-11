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
    endpointType: "default",
    identity: {
      user: {
        id: "550fae72-d251-43ec-868c-373732c2704f",
        tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
        displayName: "Heidi Steen"
      }
    },
    languageId: "languageId-value",
    region: "region-value",
    replacesCallId: "replacesCallId-value"
  },
  clientContext: "9e90d1c1-f61e-43e7-9f75-d420159aae08"
};

let res = await client.api('/communications/calls/{id}/transfer')
	.version('beta')
	.post(transfer);

```