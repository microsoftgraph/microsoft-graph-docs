---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var scopedRoleMembers = await graphClient.AdministrativeUnits["{administrativeUnit-id}"].ScopedRoleMembers
	.Request()
	.GetAsync();

```