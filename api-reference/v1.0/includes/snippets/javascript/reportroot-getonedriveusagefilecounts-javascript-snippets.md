---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/reports/getOneDriveUsageFileCounts(period='D7')')
	.get();

```