---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
    subject:"9/8/2018: concert",
    body:{
        contentType:"HTML",
        content:"The group represents Washington."
    },
    toRecipients:[
        {
            emailAddress:{
                address:"AlexW@contoso.OnMicrosoft.com"
            }
        }
    ],
    internetMessageHeaders:[
        {
            name:"x-custom-header-group-name",
            value:"Washington"
        },
        {
            name:"x-custom-header-group-id",
            value:"WA001"
        }
    ]
};

let res = await client.api('/me/messages')
	.post(message);

```