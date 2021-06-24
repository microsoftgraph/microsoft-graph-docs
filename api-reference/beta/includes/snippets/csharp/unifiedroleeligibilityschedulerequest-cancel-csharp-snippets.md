---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.RoleManagement.Directory.RoleEligibilityScheduleRequests["{unifiedRoleEligibilityScheduleRequest-id}"]
	.Cancel()
	.Request()
	.PostAsync();

```