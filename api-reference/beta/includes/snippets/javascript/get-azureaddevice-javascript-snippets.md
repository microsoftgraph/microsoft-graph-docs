---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let updatableAsset = await client.api('/admin/windows/updates/updatableAssets/983f03cd-03cd-983f-cd03-3f98cd033f98')
	.version('beta')
	.get();

```