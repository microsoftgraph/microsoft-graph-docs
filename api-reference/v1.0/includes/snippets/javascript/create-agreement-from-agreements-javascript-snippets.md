---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agreement = {
  displayName: 'MSGraph Sample',
  isViewingBeforeAcceptanceRequired: true,
  files: [
    {
      fileName: 'TOU.pdf',
      language: 'en',
      isDefault: true,
      fileData: {
        data: 'SGVsbG8gd29ybGQ='
      }
    }
  ]
};

await client.api('/identityGovernance/termsOfUse/agreements')
	.post(agreement);

```