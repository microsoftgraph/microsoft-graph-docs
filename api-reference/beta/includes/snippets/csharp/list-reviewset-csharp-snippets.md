---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reviewSets = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].ReviewSets
	.Request()
	.GetAsync();

```