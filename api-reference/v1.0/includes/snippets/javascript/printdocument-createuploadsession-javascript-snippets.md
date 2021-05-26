---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const uploadSession = {
  properties: {
    documentName: 'TestFile.pdf',
    contentType: 'application/pdf', 
    size: 4533322
  }
};

await client.api('/print/printers/{printerId}/jobs/{printJobId}/documents/{printDocumentId}/createUploadSession')
	.post(uploadSession);

```