---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityUserFlow = {
  id: 'Pol1',
  userFlowType: 'signUpOrSignIn',
  userFlowTypeVersion: 1
};

await client.api('/identity/userFlows')
	.version('beta')
	.post(identityUserFlow);

```