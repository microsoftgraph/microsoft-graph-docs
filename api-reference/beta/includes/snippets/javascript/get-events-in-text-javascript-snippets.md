---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/events')
	.version('beta')
	.header('Prefer','outlook.body-content-type="text"')
	.select('subject,body,bodyPreview')
	.get();

```