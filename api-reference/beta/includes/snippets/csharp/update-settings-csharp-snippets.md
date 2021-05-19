---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var settings = new Microsoft.Graph.Ediscovery.Settings
{
	RedundancyDetection = new Microsoft.Graph.Ediscovery.RedundancyDetectionSettings
	{
		IsEnabled = false,
		SimilarityThreshold = 70,
		MinWords = 12,
		MaxWords = 400000
	},
	TopicModeling = new Microsoft.Graph.Ediscovery.TopicModelingSettings
	{
		IsEnabled = false,
		IgnoreNumbers = false,
		TopicCount = 50,
		DynamicallyAdjustTopicCount = false
	},
	Ocr = new Microsoft.Graph.Ediscovery.OcrSettings
	{
		IsEnabled = true,
		MaxImageSize = 12000
	}
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].Settings
	.Request()
	.UpdateAsync(settings);

```