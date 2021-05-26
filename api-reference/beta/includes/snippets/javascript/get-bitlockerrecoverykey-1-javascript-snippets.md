---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let recoveryKeys = await client.api('/informationProtection/bitlocker/recoveryKeys')
	.version('beta')
	.header('ocp-client-name','"My Friendly Client"')
	.header('ocp-client-version','"1.2"')
	.get();

```