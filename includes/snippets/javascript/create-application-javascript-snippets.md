---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
  displayName: "Contoso IWA App",
  signInAudience:"AzureADMyOrg"
};

let res = await client.api('/applications')
	.version('beta')
	.post(application);

```