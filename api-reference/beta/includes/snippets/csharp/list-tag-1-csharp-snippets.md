---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tags = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].Tags
	.Request()
	.GetAsync();

```