---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agreement = {
  displayName: 'displayName-value',
  isViewingBeforeAcceptanceRequired: true
};

await client.api('/identityGovernance/termsOfUse/agreements/{id}')
	.version('beta')
	.update(agreement);

```