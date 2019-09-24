---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const profilePhoto = {
  height: 99,
  width: 99,
  id: "id-value"
};

let res = await client.api('/users/{id|userPrincipalName}/photo')
	.update(profilePhoto);

```