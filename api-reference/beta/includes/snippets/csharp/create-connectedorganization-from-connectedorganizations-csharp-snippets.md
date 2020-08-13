---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectedOrganization = new ConnectedOrganization
{
	DisplayName = "Connected organization name",
	Description = "Connected organization description",
	IdentitySources = new List<IdentitySource>()
	{
		new DomainIdentitySource
		{
			DomainName = "example.com",
			DisplayName = "example.com"
		}
	}
};

await graphClient.IdentityGovernance.EntitlementManagement.ConnectedOrganizations
	.Request()
	.AddAsync(connectedOrganization);

```