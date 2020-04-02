---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appRoleAssignment = await graphClient.ServicePrincipals["{id}"].AppRoleAssignedTo["{id}"]
	.Request()
	.GetAsync();

```