---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const publishedResource = {
    displayName: 'Demo provisioning (updated)'
};

await client.api('/onPremisesPublishingProfiles/provisioning/publishedResources/1234b780-965f-4149-85c5-a8c73e58b67d')
	.version('beta')
	.update(publishedResource);

```