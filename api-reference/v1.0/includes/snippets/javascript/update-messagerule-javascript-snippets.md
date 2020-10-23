---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const messageRule = {
    displayName: "Important from partner",
    actions: {
        markImportance: "high"
     }
};

let res = await client.api('/me/mailFolders/inbox/messageRules/AQAAAJ5dZqA=')
	.update(messageRule);

```