---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/users')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.filter('endswith(mail,'a@contoso.com')')
	.orderby('userPrincipalName')
	.get();

```