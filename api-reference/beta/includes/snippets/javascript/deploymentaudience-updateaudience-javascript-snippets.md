---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateAudience = {
  addMembers: [
    {
      '@odata.type': '#microsoft.graph.windowsUpdates.updatableAsset',
      id: 'String (identifier)'
    }
  ],
  removeMembers: [
    {
      '@odata.type': '#microsoft.graph.windowsUpdates.updatableAsset',
      id: 'String (identifier)'
    }
  ],
  addExclusions: [
    {
      '@odata.type': '#microsoft.graph.windowsUpdates.updatableAsset',
      id: 'String (identifier)'
    }
  ],
  removeExclusions: [
    {
      '@odata.type': '#microsoft.graph.windowsUpdates.updatableAsset',
      id: 'String (identifier)'
    }
  ]
};

await client.api('/admin/windows/updates/deployments/{deploymentId}/audience/updateAudience')
	.version('beta')
	.post(updateAudience);

```