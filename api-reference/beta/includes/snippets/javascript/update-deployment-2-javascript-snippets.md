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
  settings: {
    '@odata.type': 'microsoft.graph.windowsUpdates.windowsDeploymentSettings',
    monitoring: {
      monitoringRules: [
        {
          signal: 'rollback',
          threshold: 5,
          action: 'pauseDeployment'
        }
      ]
    }
  }
};

await client.api('/admin/windows/updates/deployments/b5171742-1742-b517-4217-17b5421717b5')
	.version('beta')
	.update(deployment);

```