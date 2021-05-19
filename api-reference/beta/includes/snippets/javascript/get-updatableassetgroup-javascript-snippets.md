---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let updatableAsset = await client.api('/admin/windows/updates/updatableAssets/5c55730b-730b-5c55-0b73-555c0b73555c')
	.version('beta')
	.get();

```