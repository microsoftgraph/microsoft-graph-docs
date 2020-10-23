---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const shiftPreferences = {
    id: "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7",
    @odata.etag: "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa",
    availability: [
        {
            recurrence: {
                pattern: {
                    type: "Weekly",
                    daysOfWeek: ["Monday", "Wednesday", "Friday"],
                    interval: 1
                },
                range: {
                    type: "noEnd"
                }
            },
            timeZone: "Pacific Standard Time",
            timeSlots: null
        }
    ]
};

let res = await client.api('/users/871dbd5c-3a6a-4392-bfe1-042452793a50/settings/shiftPreferences')
	.version('beta')
	.put(shiftPreferences);

```