---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let monthlyPrintUsageByPrinter = await client.api('/reports/monthlyPrintUsageByPrinter')
	.get();

```