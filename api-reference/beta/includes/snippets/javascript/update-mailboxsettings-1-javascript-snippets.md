---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailboxSettings = {
    '@odata.context': 'https://graph.microsoft.com/beta/$metadata#Me/mailboxSettings',
    automaticRepliesSetting: {
        status: 'Scheduled',
        scheduledStartDateTime: {
          dateTime: '2016-03-20T18:00:00.0000000',
          timeZone: 'UTC'
        },
        scheduledEndDateTime: {
          dateTime: '2016-03-28T18:00:00.0000000',
          timeZone: 'UTC'
        }
    }
};

await client.api('/me/mailboxSettings')
	.version('beta')
	.update(mailboxSettings);

```