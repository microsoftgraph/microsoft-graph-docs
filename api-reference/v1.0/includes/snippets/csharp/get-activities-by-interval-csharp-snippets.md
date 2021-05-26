---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getActivitiesByInterval = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"]
	.GetActivitiesByInterval("2017-01-01","2017-01-3","day")
	.Request()
	.GetAsync();

```