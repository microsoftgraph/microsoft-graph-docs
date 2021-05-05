---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let callRecord = await client.api('/communications/callRecords/{id}')
	.get();

```