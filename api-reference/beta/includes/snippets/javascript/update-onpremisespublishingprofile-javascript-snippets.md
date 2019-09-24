---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const hybridAgentUpdaterConfiguration = {
    "allowUpdateConfigurationOverride" : false
};

let res = await client.api('/onPremisesPublishingProfiles/provisioning/hybridAgentUpdaterConfiguration')
	.version('beta')
	.update(hybridAgentUpdaterConfiguration);

```