---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const hybridAgentUpdaterConfiguration = {
   updateWindow: 
{
      updateWindowStartTime: '0:00:00',
      updateWindowEndTime: '23:59:00'
  }
};

await client.api('/onPremisesPublishingProfiles/provisioning/hybridAgentUpdaterConfiguration')
	.version('beta')
	.update(hybridAgentUpdaterConfiguration);

```