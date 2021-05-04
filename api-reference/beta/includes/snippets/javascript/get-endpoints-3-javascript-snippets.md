---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let dailyPrintUsageSummariesByPrinter = await client.api('/print/reports/dailyPrintUsageSummariesByPrinter')
	.version('beta')
	.get();

```