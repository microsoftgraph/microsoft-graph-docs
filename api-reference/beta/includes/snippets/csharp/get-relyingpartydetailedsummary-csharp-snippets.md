---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getRelyingPartyDetailedSummary = await graphClient.Reports
	.GetRelyingPartyDetailedSummary("period_value")
	.Request()
	.GetAsync();

```