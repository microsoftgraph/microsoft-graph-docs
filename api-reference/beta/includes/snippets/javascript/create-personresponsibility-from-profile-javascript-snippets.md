---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const string = {
  description: 'Member of the Microsoft API Council',
  displayName: 'API Council',
  collaborationTags: [
    'askMeAbout'
  ]
};

await client.api('/me/responsibilities')
	.version('beta')
	.post(string);

```