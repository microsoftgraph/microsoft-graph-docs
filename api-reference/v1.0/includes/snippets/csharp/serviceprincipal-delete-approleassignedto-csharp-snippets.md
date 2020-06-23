---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.ServicePrincipals["{id}"].AppRoleAssignedTo["{id}"]
	.Request()
	.DeleteAsync();

```