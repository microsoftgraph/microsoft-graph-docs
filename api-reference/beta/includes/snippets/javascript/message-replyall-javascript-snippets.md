---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const replyAll = {
    message:{
      attachments: [ 
        { 
          @odata.type: "#microsoft.graph.fileAttachment", 
          name: "guidelines.txt", 
          contentBytes: "bWFjIGFuZCBjaGVlc2UgdG9kYXk=" 
        } 
      ]
    },
    comment: "Please take a look at the attached guidelines before you decide on the name." 
};

let res = await client.api('/me/messages/AAMkADA1MTAAAH5JaKAAA=/replyAll')
	.version('beta')
	.post(replyAll);

```