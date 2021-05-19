---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updatableAsset = {
  '@odata.type': '#microsoft.graph.windowsUpdates.updatableAssetGroup'
};

await client.api('/admin/windows/updates/updatableAssets')
	.version('beta')
	.post(updatableAsset);

```