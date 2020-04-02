---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessParticipantActivityCounts = await graphClient.Reports
	.GetSkypeForBusinessParticipantActivityCounts("D7")
	.Request()
	.GetAsync();

```