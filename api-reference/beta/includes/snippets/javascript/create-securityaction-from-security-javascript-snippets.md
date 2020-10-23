---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const securityAction = {
  name: "BlockIp",
  actionReason: "Test",
  parameters: [
    {
      name: "IP",
      value: "1.2.3.4"
    }
  ],
  vendorInformation: {
    provider: "Windows Defender ATP",
    vendor: "Microsoft"
  }
};

let res = await client.api('/security/securityActions')
	.version('beta')
	.post(securityAction);

```