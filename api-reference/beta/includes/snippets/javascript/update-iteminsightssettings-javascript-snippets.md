---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemInsightsSettings = {
  disabledForGroup: "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
};

let res = await client.api('/organization/{organizationId}/settings/itemInsights')
	.version('beta')
	.update(itemInsightsSettings);

```