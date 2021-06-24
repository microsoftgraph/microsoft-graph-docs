---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unenrollAssetsById = {
  updateCategory: 'feature',
  memberEntityType: '#microsoft.graph.windowsUpdates.azureADDevice',
  ids: [
    'String',
    'String',
    'String'
  ]
};

await client.api('/admin/windows/updates/updatableAssets/unenrollAssetsById')
	.version('beta')
	.post(unenrollAssetsById);

```