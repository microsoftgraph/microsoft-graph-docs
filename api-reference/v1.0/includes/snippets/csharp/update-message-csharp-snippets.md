---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	Subject = "subject-value",
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "content-value"
	},
	InferenceClassification = InferenceClassificationType.Other
};

await graphClient.Me.Messages["{id}"]
	.Request()
	.UpdateAsync(message);

```