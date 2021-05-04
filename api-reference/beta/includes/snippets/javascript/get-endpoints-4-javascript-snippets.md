---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let dailyPrintUsageSummariesByUser = await client.api('/print/reports/dailyPrintUsageSummariesByUser')
	.version('beta')
	.get();

```