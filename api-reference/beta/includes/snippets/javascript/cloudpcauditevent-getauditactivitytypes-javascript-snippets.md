---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAuditActivityTypes = await client.api('/deviceManagement/virtualEndpoint/auditEvents/getAuditActivityTypes')
	.version('beta')
	.get();

```