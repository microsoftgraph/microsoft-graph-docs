---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessPeerToPeerActivityCounts = await graphClient.Reports
	.GetSkypeForBusinessPeerToPeerActivityCounts("D7")
	.Request()
	.GetAsync();

```