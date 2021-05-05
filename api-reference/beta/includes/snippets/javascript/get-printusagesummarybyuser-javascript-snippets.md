---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printUsageByUser = await client.api('/print/reports/dailyPrintUsageSummariesByUser/{id}')
	.version('beta')
	.get();

```