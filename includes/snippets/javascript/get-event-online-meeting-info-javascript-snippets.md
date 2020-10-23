---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/events/AAMkADAGu0AABIGYDZAAA=')
	.select('isOnlineMeeting,onlineMeetingProvider,onlineMeeting')
	.get();

```