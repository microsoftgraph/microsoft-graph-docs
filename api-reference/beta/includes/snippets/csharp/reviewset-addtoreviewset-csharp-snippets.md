---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sourceCollection = new Microsoft.Graph.Ediscovery.SourceCollection
{
	Id = "1a9b4145d8f84e39bc45a7f68c5c5119"
};

var additionalData = Microsoft.Graph.Ediscovery.AdditionalDataOptions.LinkedFiles;

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].ReviewSets["{ediscovery.reviewSet-id}"]
	.AddToReviewSet(sourceCollection,additionalData)
	.Request()
	.PostAsync();

```