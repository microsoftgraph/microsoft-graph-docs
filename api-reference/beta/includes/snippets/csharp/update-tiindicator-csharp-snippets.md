---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tiIndicator = new TiIndicator
{
	AdditionalInformation = "additionalInformation-after-update",
	Confidence = 42,
	Description = "description-after-update"
};

await graphClient.Security.TiIndicators["{id}"]
	.Request()
	.Header("Prefer","return=representation")
	.UpdateAsync(tiIndicator);

```