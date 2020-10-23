---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const applicationServicePrincipal = {
  displayName: "AWS Contoso"
};

let res = await client.api('/applicationTemplates/8b1025e4-1dd2-430b-a150-2ef79cd700f5/instantiate')
	.version('beta')
	.post(applicationServicePrincipal);

```