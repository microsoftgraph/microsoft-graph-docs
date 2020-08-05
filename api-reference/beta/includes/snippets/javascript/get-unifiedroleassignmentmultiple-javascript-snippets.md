---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/roleManagement/deviceManagement/roleAssignments')
	.version('beta')
	.filter(' principalIds/any(x:x eq '564ae70c-73d9-476b-820b-fb61eb7384b9')')
	.get();

```