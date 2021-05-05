---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const copyToDefaultContentLocation = {
   sourceFile: {
      sharepointIds: {
         listId: 'e2ecf63b-b0fd-48f7-a54a-d8c15479e3b0',
         listItemId: '2'
      }
   },
   destinationFileName: 'newname.txt'
};

await client.api('/sites/{id}/contentTypes/{contentTypeId}/copyToDefaultContentLocation')
	.version('beta')
	.post(copyToDefaultContentLocation);

```