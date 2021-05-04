---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let participant = await client.api('/communications/calls/7531d31f-d10d-44de-802f-c569dbca451c/participants/7e1b4346-85a6-4bdd-abe3-d11c5d420efe')
	.get();

```