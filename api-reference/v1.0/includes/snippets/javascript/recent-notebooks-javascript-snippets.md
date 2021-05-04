---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getRecentNotebooks = await client.api('/me/onenote/notebooks/getRecentNotebooks(includePersonalNotebooks=true)')
	.get();

```