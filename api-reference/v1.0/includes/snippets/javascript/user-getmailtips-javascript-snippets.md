---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailTips = {
    EmailAddresses: [
        'danas@contoso.onmicrosoft.com', 
        'fannyd@contoso.onmicrosoft.com'
    ],
    MailTipsOptions: 'automaticReplies, mailboxFullStatus'
};

await client.api('/me/getMailTips')
	.post(mailTips);

```