---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var inferenceClassificationOverride = new InferenceClassificationOverride
{
	ClassifyAs = InferenceClassificationType.Focused,
	SenderEmailAddress = new EmailAddress
	{
		Name = "Samantha Booth",
		Address = "samanthab@adatum.onmicrosoft.com"
	}
};

await graphClient.Me.InferenceClassification.Overrides
	.Request()
	.AddAsync(inferenceClassificationOverride);

```