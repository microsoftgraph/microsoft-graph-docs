---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sourceCollections = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].SourceCollections
	.Request()
	.GetAsync();

```