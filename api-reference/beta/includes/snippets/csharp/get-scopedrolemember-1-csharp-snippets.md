---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var scopedRoleMembership = await graphClient.AdministrativeUnits["{administrativeUnit-id}"].ScopedRoleMembers["{scopedRoleMembership-id}"]
	.Request()
	.GetAsync();

```