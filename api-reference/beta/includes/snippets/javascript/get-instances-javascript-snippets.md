---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let instances = await client.api('/me/events/AAMkAGUzYRgWAAA=/instances?startDateTime=2019-04-08T09:00:00.0000000&endDateTime=2019-04-30T09:00:00.0000000&$select=subject,bodyPreview,seriesMasterId,type,recurrence,start,end')
	.version('beta')
	.select('subject,bodyPreview,seriesMasterId,type,recurrence,start,end')
	.get();

```