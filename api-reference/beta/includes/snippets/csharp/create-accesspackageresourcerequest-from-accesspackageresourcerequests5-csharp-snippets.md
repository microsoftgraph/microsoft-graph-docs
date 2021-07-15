---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageResourceRequest = new AccessPackageResourceRequestObject
{
	CatalogId = "beedadfe-01d5-4025-910b-84abb9369997",
	RequestType = "AdminRemove",
	AccessPackageResource = new AccessPackageResource
	{
		Id = "354078e5-dbce-4894-8af4-0ab274d41662"
	}
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceRequests
	.Request()
	.AddAsync(accessPackageResourceRequest);

```