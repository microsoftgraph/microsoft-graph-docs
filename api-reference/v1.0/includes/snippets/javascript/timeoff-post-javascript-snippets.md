---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const timeOff = {
  userId: 'c5d0c76b-80c4-481c-be50-923cd8d680a1',
  sharedTimeOff: {
    timeOffReasonId: 'TOR_891045ca-b5d2-406b-aa06-a3c8921245d7',
    startDateTime: '2019-03-11T07:00:00Z',
    endDateTime: '2019-03-12T07:00:00Z',
    theme: 'white'
  },
  draftTimeOff: {
    timeOffReasonId: 'TOR_891045ca-b5d2-406b-aa06-a3c8921245d7',
    startDateTime: '2019-03-11T07:00:00Z',
    endDateTime: '2019-03-12T07:00:00Z',
    theme: 'pink'
  }
};

await client.api('/teams/{teamId}/schedule/timesOff')
	.post(timeOff);

```