---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageResourceRequest = {
  catalogId:"26ac0c0a-08bc-4a7b-a313-839f58044ba5",
  requestType: "AdminAdd",
  justification: "",
  accessPackageResource: {
     displayName: "Sales",
     description: "https://contoso.sharepoint.com/sites/Sales",
     url: "https://contoso.sharepoint.com/sites/Sales",
     resourceType: "SharePoint Online Site",
     originId: "https://contoso.sharepoint.com/sites/Sales",
     originSystem: "SharePointOnline"
  }
};

let res = await client.api('/identityGovernance/entitlementManagement/accessPackageResourceRequests')
	.version('beta')
	.post(accessPackageResourceRequest);

```