---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectedOrganizations = await graphClient.IdentityGovernance.EntitlementManagement.ConnectedOrganizations
	.Request()
	.GetAsync();

```