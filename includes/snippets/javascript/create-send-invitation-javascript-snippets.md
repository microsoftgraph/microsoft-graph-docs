---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const event = Prefer: outlook.timezone="Pacific Standard Time"
Content-type: application/json

{
  subject: "Christmas dinner",
  body: {
    contentType: "HTML",
    content: "Happy holidays!"
  },
  start: {
      dateTime: "2019-12-25T18:00:00",
      timeZone: "Pacific Standard Time"
  },
  end: {
      dateTime: "2019-12-25T22:00:00",
      timeZone: "Pacific Standard Time"
  },
  location:{
      displayName:"Alex' home"
  },
  attendees: [
    {
      emailAddress: {
        address:"meganb@contoso.onmicrosoft.com",
        name: "Megan Bowen"
      },
      type: "required"
    },
    {
      emailAddress: {
        address:"ChristieC@contoso.onmicrosoft.com",
        name: "Christie Cline"
      },
      type: "required"
    }
  ]
};

let res = await client.api('/me/calendars/AAMkADRpAABf0JlzAAA=/events')
	.post(event);

```