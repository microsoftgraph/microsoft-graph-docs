---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateAdDomainPassword = {
  adDomainPassword: 'AdDomainPassword value'
};

await client.api('/deviceManagement/virtualEndpoint/onPremisesConnections/{Id}/UpdateAdDomainPassword')
	.version('beta')
	.update(updateAdDomainPassword);

```