---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onlineMeeting = {
  startDateTime:"2019-09-09T14:33:30.8546353-07:00",
  endDateTime:"2019-09-09T15:03:30.8566356-07:00",
  subject:"Application Token Meeting",
  participants: {
    organizer: {
      identity: {
        user: {
          id: "550fae72-d251-43ec-868c-373732c2704f"
        }
      }
    }
  }
};

let res = await client.api('/communications/onlineMeetings')
	.post(onlineMeeting);

```