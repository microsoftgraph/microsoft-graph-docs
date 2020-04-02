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
      contentType: "text",
      content: "I attached a reference to a file on OneDrive."
    },
    attachments: [{
      @odata.type: "#microsoft.graph.referenceAttachment", 
      name: "Personal pictures", 
      sourceUrl: "https://contoso.com/personal/mario_contoso_net/Documents/Pics", 
      providerType: "oneDriveConsumer", 
      permission: "Edit", 
      isFolder: "True"
    } ]
  }
};

let res = await client.api('/groups/1848753d-185d-4c08-a4e4-6ee40521d115/threads/AAQkADJUdfolA==/reply')
	.version('beta')
	.post(reply);

```