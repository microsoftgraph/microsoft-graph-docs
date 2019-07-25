---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.AdministrativeUnits["{id}"].ScopedRoleMembers["{id}"]
	.Request()
	.DeleteAsync();

```