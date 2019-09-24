---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessParticipantActivityUserCounts = await graphClient.Reports
	.GetSkypeForBusinessParticipantActivityUserCounts("D7")
	.Request()
	.GetAsync();

```