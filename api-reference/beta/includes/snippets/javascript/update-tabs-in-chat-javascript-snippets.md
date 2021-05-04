---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamsTab = {
  displayName: 'My Contoso Tab - updated again'
};

await client.api('/chats/19:d65713bc498c4a428c71ef9353e6ce20@thread.v2/tabs/794f0e4e-4d10-4bb5-9079-3a465a629eff')
	.version('beta')
	.update(teamsTab);

```