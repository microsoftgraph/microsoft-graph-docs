---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let monthlyPrintUsageSummariesByPrinter = await client.api('/print/reports/monthlyPrintUsageSummariesByPrinter')
	.version('beta')
	.get();

```