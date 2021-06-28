---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let monthlyPrintUsageByPrinter = await client.api('/print/reports/monthlyPrintUsageByPrinter')
	.version('beta')
	.get();

```