---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authorizationPolicy = {
  allowEmailVerifiedUsersToJoinOrganization:false
};

let res = await client.api('/policies/authorizationPolicy')
	.update(authorizationPolicy);

```