---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authorizationPolicy = {
   allowedToUseSSPR:true
};

let res = await client.api('/policies/authorizationPolicy/authorizationPolicy')
	.version('beta')
	.update(authorizationPolicy);

```