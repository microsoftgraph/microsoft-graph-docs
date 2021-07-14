---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcAuditEvent = await client.api('/deviceManagement/virtualEndpoint/auditEvents/{id}')
	.version('beta')
	.get();

```