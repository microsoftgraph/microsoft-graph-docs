---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let event = await client.api('/me/events/AAMkAGIAAAoZDOFAAA=/')
	.version('beta')
	.header('Prefer','outlook.timezone="Pacific Standard Time"')
	.select('subject,body,bodyPreview,organizer,attendees,start,end,location,hideAttendees')
	.get();

```