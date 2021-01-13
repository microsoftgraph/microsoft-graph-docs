---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/teams/ee0f5ae2-8bc6-4ae5-8466-7daeebbfa062/members')
	.version('beta')
	.get();

```