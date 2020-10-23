---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/appCatalogs/teamsApps')
	.filter('id eq 'b1c5353a-7aca-41b3-830f-27d5218fe0e5'')
	.get();

```