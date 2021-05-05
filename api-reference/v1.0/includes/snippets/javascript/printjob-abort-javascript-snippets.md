---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const abort = {
  reason: 'String'
};

await client.api('/print/printers/{printerId}/jobs/{printJobId}/abort')
	.post(abort);

```