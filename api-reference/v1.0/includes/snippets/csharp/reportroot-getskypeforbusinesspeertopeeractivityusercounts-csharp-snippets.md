---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports
	.GetSkypeForBusinessPeerToPeerActivityUserCounts("D7")
	.Request()
	.GetAsync();

```