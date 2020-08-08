---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const uploadSession = {
  AttachmentItem: {
    attachmentType: "file",
    name: "flower",
    size: 3483322
  }
};

let res = await client.api('/me/events/AAMkADU5CCmSAAA=/attachments/createUploadSession')
	.post(uploadSession);

```