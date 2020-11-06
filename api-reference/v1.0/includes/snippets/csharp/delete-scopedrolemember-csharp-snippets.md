---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Directory.AdministrativeUnits["{id}"].ScopedRoleMembers["{id}"]
	.Request()
	.DeleteAsync();

```