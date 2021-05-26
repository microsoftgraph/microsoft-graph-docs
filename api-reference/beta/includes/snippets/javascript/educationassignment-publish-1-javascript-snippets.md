---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let string = await client.api('/education/classes/11012/assignments/19002/getResourcesFolderUrl')
	.version('beta')
	.get();

```