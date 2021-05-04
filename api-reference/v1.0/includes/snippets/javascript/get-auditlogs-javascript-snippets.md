---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let auditLogRoot = await client.api('/auditLogs')
	.get();

```