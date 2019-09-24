---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessPeerToPeerActivityUserCounts = await graphClient.Reports
	.GetSkypeForBusinessPeerToPeerActivityUserCounts("D7")
	.Request()
	.GetAsync();

```