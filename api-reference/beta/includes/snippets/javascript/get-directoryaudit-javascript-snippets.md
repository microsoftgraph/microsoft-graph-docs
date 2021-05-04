---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directoryAudit = await client.api('/auditLogs/directoryAudits/{id}')
	.version('beta')
	.get();

```