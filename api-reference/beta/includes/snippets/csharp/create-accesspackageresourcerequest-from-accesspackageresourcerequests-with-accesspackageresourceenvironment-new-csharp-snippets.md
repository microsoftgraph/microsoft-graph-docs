---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageResourceRequest = new AccessPackageResourceRequestObject
{
	CatalogId = "de9315c1-272b-4905-924b-cc112ca180c7",
	AccessPackageResource = new AccessPackageResource
	{
		DisplayName = "Community Outreach",
		Description = "https://contoso.sharepoint.com/sites/CSR",
		ResourceType = "SharePoint Online Site",
		OriginId = "https://contoso.sharepoint.com/sites/CSR",
		OriginSystem = "SharePointOnline",
		AccessPackageResourceEnvironment = new AccessPackageResourceEnvironment
		{
			OriginId = "https://contoso-admin.sharepoint.com/"
		}
	},
	RequestType = "AdminAdd"
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceRequests
	.Request()
	.AddAsync(accessPackageResourceRequest);

```