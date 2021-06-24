---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deployment = {
  '@odata.type': '#microsoft.graph.windowsUpdates.deployment',
  content: {
    '@odata.type': 'microsoft.graph.windowsUpdates.featureUpdateReference',
    version: '20H2'
  },
  settings: {
    '@odata.type': 'microsoft.graph.windowsUpdates.windowsDeploymentSettings',
    rollout: {
      devicesPerOffer: 100
    },
    monitoring: {
      monitoringRules: [
        {
          '@odata.type': '#microsoft.graph.windowsUpdates.monitoringRule',
          signal: 'rollback',
          threshold: 5,
          action: 'pauseDeployment'
        }
      ]
    }
  }
};

await client.api('/admin/windows/updates/deployments')
	.version('beta')
	.post(deployment);

```