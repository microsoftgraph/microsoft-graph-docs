---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workforceIntegrations = {
  displayName: "displayName-value",
  apiVersion: 99,
  encryption: {
    protocol: "protocol-value",
    secret: "secret-value"
  },
  isActive: true,
  url: "url-value",
  supports: "supports-value"
};

let res = await client.api('/teamwork/workforceIntegrations')
	.version('beta')
	.update(workforceIntegrations);

```