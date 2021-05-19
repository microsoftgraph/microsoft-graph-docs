---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const addMembersById = {
  ids: [
    'String',
    'String',
    'String'
  ],
  memberEntityType: '#microsoft.graph.windowsUpdates.azureADDevice'
};

await client.api('/admin/windows/updates/updatableAssets/{updatableAssetGroupId}/addMembersById')
	.version('beta')
	.post(addMembersById);

```