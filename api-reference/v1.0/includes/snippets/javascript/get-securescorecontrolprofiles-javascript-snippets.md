---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let secureScoreControlProfiles = await client.api('/security/secureScoreControlProfiles')
	.get();

```