---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/groups')
	.header('ConsistencyLevel','eventual')
	.filter('hasMembersWithLicenseErrors+eq+true,')
	.select('id,displayName')
	.get();

```