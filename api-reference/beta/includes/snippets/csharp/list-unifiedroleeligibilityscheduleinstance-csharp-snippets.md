---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleEligibilityScheduleInstances = await graphClient.RoleManagement.Directory.RoleEligibilityScheduleInstances
	.Request()
	.GetAsync();

```