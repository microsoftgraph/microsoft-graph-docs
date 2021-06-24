---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tag = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].Tags["{ediscovery.tag-id}"]
	.Request()
	.GetAsync();

```