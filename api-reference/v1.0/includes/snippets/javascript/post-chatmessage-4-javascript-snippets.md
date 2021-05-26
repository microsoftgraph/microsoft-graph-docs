---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chatMessage = {
    body: {
        contentType: 'html',
        content: 'Here\'s the latest budget. <attachment id=\"153fa47d-18c9-4179-be08-9879815a9f90\"></attachment>'
    },
    attachments: [
        {
            id: '153fa47d-18c9-4179-be08-9879815a9f90',
            contentType: 'reference',
            contentUrl: 'https://m365x987948.sharepoint.com/sites/test/Shared%20Documents/General/test%20doc.docx',
            name: 'Budget.docx'
        }
    ]
};

await client.api('/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages')
	.post(chatMessage);

```