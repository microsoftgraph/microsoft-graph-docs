---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sectionGroup = await client.api('/me/onenote/sectionGroups/{id}')
	.version('beta')
	.get();

```