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
      endpointType: "default",
      identity: {
        user: {
          id: "550fae72-d251-43ec-868c-373732c2704f",
          tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
          displayName: "Heidi Steen"
        }
      },
      languageId: "en-US",
      region: "westus"
    }
  ],
  targetDisposition: "default",
  timeout: 99,
  maskCallee: false,
  maskCaller: false
};

let res = await client.api('/app/calls/{id}/redirect')
	.version('beta')
	.post(redirect);

```