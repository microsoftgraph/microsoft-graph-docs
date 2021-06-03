---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const enrollAssetsById = {
  updateCategory: 'feature',
  memberEntityType: '#microsoft.graph.windowsUpdates.azureADDevice',
  ids: [
    'String',
    'String',
    'String'
  ]
};

await client.api('/admin/windows/updates/updatableAssets/enrollAssetsById')
	.version('beta')
	.post(enrollAssetsById);

```