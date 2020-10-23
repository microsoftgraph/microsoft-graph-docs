---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contentInfo = new ContentInfo
{
	Format = ContentFormat.Default,
	Identifier = null,
	State = ContentState.Rest,
	AdditionalData = new Dictionary<string, object>()
	{
		{"format@odata.type", "#microsoft.graph.contentFormat"},
		{"state@odata.type", "#microsoft.graph.contentState"}
	}
};

var classificationResults = new List<ClassificationResult>()
{
	new ClassificationResult
	{
		SensitiveTypeId = Guid.Parse("cb353f78-2b72-4c3c-8827-92ebe4f69fdf"),
		Count = 4,
		ConfidenceLevel = 75
	}
};

await graphClient.Informationprotection.Policy.Labels
	.EvaluateClassificationResults(contentInfo,classificationResults)
	.Request()
	.Header("User-Agent","ContosoLOBApp/1.0")
	.PostAsync();

```