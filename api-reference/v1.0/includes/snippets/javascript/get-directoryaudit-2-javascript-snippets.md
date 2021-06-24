---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directoryAudits = await client.api('/auditLogs/directoryAudits')
	.get();

```