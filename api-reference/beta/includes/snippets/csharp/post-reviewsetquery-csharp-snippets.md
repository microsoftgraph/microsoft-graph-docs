---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reviewSetQuery = new ReviewSetQuery
{
	DisplayName = "My Query 1",
	Query = "(subject:\"Quarterly Financials\")"
};

await graphClient.Compliance.Ediscovery.Cases["2eef613a-ca2d-42f4-89fe-84d5198ddedf"].ReviewSets["b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8"].Queries
	.Request()
	.AddAsync(reviewSetQuery);

```