---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectedOrganization = new ConnectedOrganization
{
	DisplayName = "Connected organization new name",
	Description = "Connected organization new description"
};

await graphClient.IdentityGovernance.EntitlementManagement.ConnectedOrganizations["{id}"]
	.Request()
	.UpdateAsync(connectedOrganization);

```