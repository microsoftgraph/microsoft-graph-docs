---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onPremisesAgentGroup = {
    displayName: "Group New Name"
};

let res = await client.api('/onPremisesPublishingProfiles/provisioning/agentGroups/8832388F-3814-4952-B288-FFB62081FE25/')
	.version('beta')
	.update(onPremisesAgentGroup);

```