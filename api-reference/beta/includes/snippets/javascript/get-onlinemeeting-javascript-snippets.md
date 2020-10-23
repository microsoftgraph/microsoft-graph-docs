---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/communications/onlineMeetings/')
	.version('beta')
	.filter('VideoTeleconferenceId eq '123456789'')
	.get();

```