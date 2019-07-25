---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/events')
	.header('Prefer','outlook.timezone="Pacific Standard Time"')
	.select('subject,body,bodyPreview,organizer,attendees,start,end,location')
	.get();

```