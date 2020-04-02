---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessPeerToPeerActivityMinuteCounts = await graphClient.Reports
	.GetSkypeForBusinessPeerToPeerActivityMinuteCounts("D7")
	.Request()
	.GetAsync();

```