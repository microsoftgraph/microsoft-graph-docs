---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.InferenceClassification.Overrides["{inferenceClassificationOverride-id}"]
	.Request()
	.DeleteAsync();

```