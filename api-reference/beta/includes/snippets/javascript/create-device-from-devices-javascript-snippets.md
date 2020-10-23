---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const device = {
  accountEnabled: true,
  alternativeSecurityIds: [
    {
      type: 99,
      identityProvider: "identityProvider-value",
      key: "base64Y3YxN2E1MWFlYw=="
    }
  ],
  approximateLastSignInDateTime: "2016-10-19T10:37:00Z",
  deviceId: "deviceId-value",
  deviceMetadata: "deviceMetadata-value",
  deviceVersion: 99
};

let res = await client.api('/devices')
	.version('beta')
	.post(device);

```