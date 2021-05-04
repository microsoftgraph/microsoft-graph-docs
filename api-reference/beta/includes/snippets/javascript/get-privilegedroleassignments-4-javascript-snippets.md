---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedRoleAssignments = await client.api('/privilegedRoleAssignments')
	.version('beta')
	.filter('isElevated eq true and expirationDateTime ne null or isElevated eq false')
	.get();

```