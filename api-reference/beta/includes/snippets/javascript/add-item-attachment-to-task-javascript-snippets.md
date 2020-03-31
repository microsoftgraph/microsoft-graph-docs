---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attachment = {
  @odata.type: "#microsoft.graph.itemAttachment",
  name: "Holiday event",
  item: {
        @odata.type: "microsoft.graph.event",
        subject: "Discuss gifts for children",
        body: {
            contentType: "HTML",
            content: "Let's look for funding!"
         },
         start: {
             dateTime: "2020-01-12T18:00:00",
             timeZone: "Pacific Standard Time"
          },
          end: {
             dateTime: "2020-01-12T19:00:00",
             timeZone: "Pacific Standard Time"
          }
    }
};

let res = await client.api('/me/outlook/tasks/AAMkADAAAANXbdnAAA=/attachments')
	.version('beta')
	.post(attachment);

```