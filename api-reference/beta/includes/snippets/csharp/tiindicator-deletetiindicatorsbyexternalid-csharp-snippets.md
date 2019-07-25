---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var value = new List<String>()
{
	"externalId-value1",
	"externalId-value2"
};

await graphClient.Security.TiIndicators
	.DeleteTiIndicatorsByExternalId(value)
	.Request()
	.PostAsync();

```