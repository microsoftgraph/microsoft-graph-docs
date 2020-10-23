---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
  appId:"d7fbfe28-c60e-46d2-8335-841923950d3b",
  tags: [
    "WindowsAzureActiveDirectoryIntegratedApp",
    "WindowsAzureActiveDirectoryOnPremApp"
  ]
};

let res = await client.api('/serviceprincipals')
	.version('beta')
	.post(servicePrincipal);

```