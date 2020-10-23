---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conversation = {
    topic:"New head count",
    threads:[
        {
            posts:[
                {
                    body:{
                        contentType:"html",
                        content:"The confirmation will come by the end of the week."
                    },
                    newParticipants:[
                        {
                            emailAddress:{
                                name:"Adele Vance",
                                address:"AdeleV@contoso.onmicrosoft.com"
                            }
                        }
                    ]
                }
            ]
        }
    ]
};

let res = await client.api('/groups/29981b6a-0e57-42dc-94c9-cd24f5306196/conversations')
	.version('beta')
	.post(conversation);

```