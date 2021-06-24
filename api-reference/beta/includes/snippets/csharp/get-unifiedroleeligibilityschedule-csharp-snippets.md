---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleEligibilitySchedule = await graphClient.RoleManagement.Directory.RoleEligibilitySchedules["{unifiedRoleEligibilitySchedule-id}"]
	.Request()
	.GetAsync();

```