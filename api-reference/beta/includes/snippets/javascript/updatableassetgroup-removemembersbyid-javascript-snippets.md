---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const removeMembersById = {
  ids: [
    'String',
    'String',
    'String'
  ],
  memberEntityType: '#microsoft.graph.windowsUpdates.azureADDevice'
};

await client.api('/admin/windows/updates/updatableAssets/{updatableAssetGroupId}/removeMembersById')
	.version('beta')
	.post(removeMembersById);

```