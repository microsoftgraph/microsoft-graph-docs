---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let itemInsightsSettings = await client.api('/organization/{organizationId}/settings/itemInsights')
	.version('beta')
	.get();

```