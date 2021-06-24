---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tiIndicator = new TiIndicator
{
	Description = "description-updated"
};

await graphClient.Security.TiIndicators["{tiIndicator-id}"]
	.Request()
	.UpdateAsync(tiIndicator);

```