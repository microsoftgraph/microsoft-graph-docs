---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let signIn = await client.api('/auditLogs/signIns/66ea54eb-6301-4ee5-be62-ff5a759b0100')
	.get();

```