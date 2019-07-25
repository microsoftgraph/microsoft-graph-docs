---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/education/classes/11021/assignments/19002/submissions/850f51b7/return')
	.version('beta')
	.post();

```