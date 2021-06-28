---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let taughtClasses = await client.api('/education/users/{educationUserId}/taughtClasses')
	.get();

```