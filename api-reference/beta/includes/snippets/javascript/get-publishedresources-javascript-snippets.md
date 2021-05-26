---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let publishedResources = await client.api('/onPremisesPublishingProfiles/{publishingType}/publishedResources')
	.version('beta')
	.expand('agentGroups')
	.get();

```