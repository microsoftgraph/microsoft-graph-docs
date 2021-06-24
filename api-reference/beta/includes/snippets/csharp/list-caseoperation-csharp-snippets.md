---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var operations = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].Operations
	.Request()
	.GetAsync();

```