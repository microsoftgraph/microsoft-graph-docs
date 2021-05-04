---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignedTo["{appRoleAssignment-id}"]
	.Request()
	.DeleteAsync();

```