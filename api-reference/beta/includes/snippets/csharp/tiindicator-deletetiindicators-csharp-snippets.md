---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var value = new List<String>()
{
	"id-value1",
	"id-value2"
};

await graphClient.Security.TiIndicators
	.DeleteTiIndicators(value)
	.Request()
	.PostAsync();

```