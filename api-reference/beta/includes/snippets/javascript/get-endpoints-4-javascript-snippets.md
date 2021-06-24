---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let dailyPrintUsageByUser = await client.api('/print/reports/dailyPrintUsageByUser')
	.version('beta')
	.get();

```