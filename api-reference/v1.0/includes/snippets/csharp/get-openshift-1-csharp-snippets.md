---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var openShift = await graphClient.Teams["{team-id}"].Schedule.OpenShifts["{openShift-id}"]
	.Request()
	.GetAsync();

```