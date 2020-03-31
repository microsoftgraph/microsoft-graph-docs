---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOffRequests = await graphClient.Teams["{id}"].Schedule.TimeOffRequests
	.Request()
	.GetAsync();

```