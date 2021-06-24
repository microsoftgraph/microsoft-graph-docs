---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageCatalog = {
  displayName: 'sales',
  description: 'for employees working with sales and outside sales partners',
  isExternallyVisible: true
};

await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs')
	.version('beta')
	.post(accessPackageCatalog);

```