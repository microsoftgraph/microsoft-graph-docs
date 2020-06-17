---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleAssignments = await graphClient.RoleManagement.DeviceManagement.RoleAssignments
	.Request()
	.Filter(" principalIds/any(x:x eq '564ae70c-73d9-476b-820b-fb61eb7384b9')")
	.GetAsync();

```