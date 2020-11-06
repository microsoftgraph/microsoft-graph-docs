---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personWebsite = {
  description: "Lyn Damer play in the Women's 1st Division (Toppserien) in Norway"
};

let res = await client.api('/me/profile/websites/{id}')
	.version('beta')
	.update(personWebsite);

```