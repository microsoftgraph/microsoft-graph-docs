---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const reply = {
  post: {
    body: {
      contentType: 'text',
      content: 'I attached an event.'
    },
    attachments: [{
      '@odata.type': '#microsoft.graph.itemAttachment',
      name: 'Holiday event', 
      item: {
          '@odata.type': 'microsoft.graph.event',
          subject: 'Discuss gifts for children',
          body: {
              contentType: 'HTML',
              content: 'Let\'s look for funding!'
          },
          start: {
              dateTime: '2019-12-02T18:00:00',
              timeZone: 'Pacific Standard Time'
          },
          end: {
              dateTime: '2019-12-02T19:00:00',
              timeZone: 'Pacific Standard Time'
          }
      }
    } ]
  }
};

await client.api('/groups/1848753d-185d-4c08-a4e4-6ee40521d115/threads/AAQkADJUdfolA==/reply')
	.post(reply);

```