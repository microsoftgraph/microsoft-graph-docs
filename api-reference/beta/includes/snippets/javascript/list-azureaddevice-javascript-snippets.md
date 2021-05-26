---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let updatableAssets = await client.api('/admin/windows/updates/updatableAssets/')
	.version('beta')
	.filter('isof(\'microsoft.graph.windowsUpdates.azureADDevice\')')
	.get();

```