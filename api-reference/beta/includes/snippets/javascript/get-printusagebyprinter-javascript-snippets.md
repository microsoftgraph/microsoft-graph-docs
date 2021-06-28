---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let printUsageByPrinter = await client.api('/print/reports/dailyPrintUsageByPrinter/016b5565-3bbf-4067-b9ff-4d68167eb1a6')
	.version('beta')
	.get();

```