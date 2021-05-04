---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cases = await graphClient.Compliance.Ediscovery.Cases
	.Request()
	.GetAsync();

```