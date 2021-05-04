---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agents = await client.api('/onPremisesPublishingProfiles/provisioning/agents')
	.version('beta')
	.expand('agentGroups')
	.get();

```