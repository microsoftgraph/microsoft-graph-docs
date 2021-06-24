---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contentType = {
    name: 'updatedCt',
	documentSet: {
		shouldPrefixNameToFile: true,
		allowedContentTypes: [{
			id: '0x0101',
			name: 'Document'
		}],
		defaultContents: [{
				fileName: 'a.txt',
				contentType: {
					id: '0x0101'
				}
			},
			{
				fileName: 'b.txt',
				contentType: {
					id: '0x0101'
				}
			}
		],
		sharedColumns: [{
				name: 'Description',
				id: 'cbb92da4-fd46-4c7d-af6c-3128c2a5576e'
			},
			{
				name: 'Address',
				id: 'fc2e188e-ba91-48c9-9dd3-16431afddd50'
			}
		],
		welcomePageColumns: [{
			name: 'Address',
			id: 'fc2e188e-ba91-48c9-9dd3-16431afddd50'
		}]
	}
};

await client.api('/sites/{site-id}/contentTypes/{contentType-id}')
	.version('beta')
	.update(contentType);

```