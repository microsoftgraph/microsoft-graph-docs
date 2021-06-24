---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let monthlyPrintUsageByUser = await client.api('/print/reports/monthlyPrintUsageByUser')
	.version('beta')
	.get();

```