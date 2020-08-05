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
        contentType: "html",
        content: "Here's the latest budget. <attachment id=\"153fa47d-18c9-4179-be08-9879815a9f90\"></attachment>"
    },
    attachments: [
        {
            id: "153fa47d-18c9-4179-be08-9879815a9f90",
            contentType: "reference",
            contentUrl: "https://m365x987948.sharepoint.com/sites/test/Shared%20Documents/General/test%20doc.docx",
            name: "Budget.docx"
        }
    ]
};

let res = await client.api('/teams/{id}/channels/{id}/messages')
	.post(chatMessage);

```