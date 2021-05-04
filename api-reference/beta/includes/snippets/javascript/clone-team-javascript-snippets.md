---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const clone = {
     displayName: 'Library Assist',
     description: 'Self help community for library',
     mailNickname: 'libassist',
     partsToClone: 'apps,tabs,settings,channels,members',
     visibility: 'public'
};

await client.api('/teams/{id}/clone')
	.version('beta')
	.post(clone);

```