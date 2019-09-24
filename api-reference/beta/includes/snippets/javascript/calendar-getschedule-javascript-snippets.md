---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const scheduleInformation = {
    schedules: ["adelev@contoso.onmicrosoft.com", "meganb@contoso.onmicrosoft.com"],
    startTime: {
        dateTime: "2019-03-15T09:00:00",
        timeZone: "Pacific Standard Time"
    },
    endTime: {
        dateTime: "2019-03-15T18:00:00",
        timeZone: "Pacific Standard Time"
    },
    availabilityViewInterval: 60
};

let res = await client.api('/me/calendar/getSchedule')
	.version('beta')
	.post(scheduleInformation);

```