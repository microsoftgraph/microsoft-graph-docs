---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const publishedResource = {
    displayName: 'New provisioning',
    resourceName: 'domain1.contoso.com'
};

await client.api('/onPremisesPublishingProfiles/provisioning/publishedResources')
	.version('beta')
	.post(publishedResource);

```