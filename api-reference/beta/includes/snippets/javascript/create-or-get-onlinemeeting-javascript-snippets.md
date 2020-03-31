---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onlineMeeting = {
  chatInfo: {
    threadId:"19%3A3b52398f3c524556894b776357c1dd79%40thread.skype"
  },
  startDateTime: "2020-02-06T01:49:21.3524945+00:00",
  endDateTime: "2020-02-06T02:19:21.3524945+00:00",
  externalId: "7eb8263f-d0e0-4149-bb1c-1f0476083c56",
  participants: {
    organizer: {
      identity: {
        user: {
          id: "d4a060b5-a8fc-450c-837b-750b2c280000",
          tenantId: "72f988bf-86f1-41af-91ab-2d7cd0110000"
        }
      },
      upn: "test1@contoso.com"
    },
    attendees: [
      {
        identity: {
          user: {
            id: "1f35f2e6-9cab-44ad-8d5a-b74c14720000",
            identityProvider: "MSA"
          }
        },
        upn: "test@contoso.com"
      }
    ]
  },
  subject:"Create a meeting with customId provided"
};

let res = await client.api('/me/onlineMeetings/createOrGet')
	.version('beta')
	.post(onlineMeeting);

```