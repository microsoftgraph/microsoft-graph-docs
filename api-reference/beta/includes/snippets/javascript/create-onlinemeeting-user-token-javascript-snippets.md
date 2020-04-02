---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onlineMeeting = {
  startDateTime:"2019-07-12T14:30:34.2444915-07:00",
  endDateTime:"2019-07-12T15:00:34.2464912-07:00",
  subject:"User Token Meeting"
};

let res = await client.api('/me/onlineMeetings')
	.version('beta')
	.post(onlineMeeting);

```