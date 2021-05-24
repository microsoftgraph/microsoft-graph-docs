---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleScheduleInstances = await graphClient.RoleManagement.Directory
	.RoleScheduleInstances("parameterValue","parameterValue","parameterValue","parameterValue")
	.Request()
	.GetAsync();

```