---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  subject: "Annual review",
  body: {
    contentType: "HTML",
    content: "You should be proud!"
  },
  toRecipients: [
    {
      emailAddress: {
        address: "rufus@contoso.com"
      }
    }
  ],
  extensions: [
    {
      @odata.type: "microsoft.graph.openTypeExtension",
      extensionName: "Com.Contoso.Referral",
      companyName: "Wingtip Toys",
      expirationDate: "2015-12-30T11:00:00.000Z",
      dealValue: 10000
    }
  ]
};

let res = await client.api('/me/messages')
	.version('beta')
	.post(message);

```