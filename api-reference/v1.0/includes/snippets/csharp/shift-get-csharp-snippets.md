---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var shift = await graphClient.Teams["{teamId}"].Schedule.Shifts["{shiftId}"]
	.Request()
	.GetAsync();

```