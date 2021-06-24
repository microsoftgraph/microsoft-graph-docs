---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var asHierarchy = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].Tags
	.AsHierarchy()
	.Request()
	.GetAsync();

```