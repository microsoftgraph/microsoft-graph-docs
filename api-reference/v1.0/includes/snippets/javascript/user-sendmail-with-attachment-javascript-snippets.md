---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sendMail = {
  message: {
    subject: "Meet for lunch?",
    body: {
      contentType: "Text",
      content: "The new cafeteria is open."
    },
    toRecipients: [
      {
        emailAddress: {
          address: "meganb@contoso.onmicrosoft.com"
        }
      }
    ],
    attachments: [
      {
        @odata.type: "#microsoft.graph.fileAttachment",
        name: "attachment.txt",
        contentType: "text/plain",
        contentBytes: "SGVsbG8gV29ybGQh"
      }
    ]
  }
};

let res = await client.api('/me/sendMail')
	.post(sendMail);

```