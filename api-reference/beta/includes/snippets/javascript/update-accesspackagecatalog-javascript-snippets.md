---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageCatalog = {
  displayName:"Catalog One"
};

let res = await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalogId}')
	.version('beta')
	.update(accessPackageCatalog);

```