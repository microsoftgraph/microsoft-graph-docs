---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemAnalytics = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Analytics
	.Request()
	.GetAsync();

```