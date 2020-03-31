---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const _boolean = {
  groupId: "ffffffff-ffff-ffff-ffff-ffffffffffff"
};

let res = await client.api('/groupLifecyclePolicies/renewGroup')
	.version('beta')
	.post(_boolean);

```