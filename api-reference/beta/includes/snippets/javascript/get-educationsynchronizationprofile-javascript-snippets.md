---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationSynchronizationProfile = await client.api('/education/synchronizationProfiles/{id}')
	.version('beta')
	.get();

```