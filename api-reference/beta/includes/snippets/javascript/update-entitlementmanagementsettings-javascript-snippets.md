---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const entitlementManagementSettings = {
  externalUserLifecycleAction: 'None'
};

await client.api('/identityGovernance/entitlementManagement/settings')
	.version('beta')
	.update(entitlementManagementSettings);

```