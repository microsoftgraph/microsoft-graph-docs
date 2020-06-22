---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const event = {
  subject: "Prep for customer meeting",
  body: {
    contentType: "HTML",
    content: "Does this time work for you?"
  },
  start: {
      dateTime: "2019-11-20T13:00:00",
      timeZone: "Pacific Standard Time"
  },
  end: {
      dateTime: "2019-11-20T14:00:00",
      timeZone: "Pacific Standard Time"
  },
  location:{
      displayName:"Cordova conference room"
  },
  attendees: [
    {
      emailAddress: {
        address:"AdeleV@contoso.OnMicrosoft.com",
        name: "Adele Vance"
      },
      type: "required"
    }
  ],
  allowNewTimeProposals: true,
  isOnlineMeeting: true,
  onlineMeetingProvider: "teamsForBusiness"
};

let res = await client.api('/me/events')
	.post(event);

```