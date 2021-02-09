---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personName = {
  nickname: "Kesha"
};

let res = await client.api('/me/profile/names/{id}')
	.version('beta')
	.update(personName);

```