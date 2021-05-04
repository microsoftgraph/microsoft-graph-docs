---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const messageRule = {
    displayName: 'Important from partner',
    actions: {
        markImportance: 'high'
     }
};

await client.api('/me/mailfolders/inbox/messagerules('AQAAAJ5dZqA=')')
	.version('beta')
	.update(messageRule);

```