---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @case = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"]
	.Request()
	.GetAsync();

```