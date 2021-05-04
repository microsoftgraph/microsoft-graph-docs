---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviews = await graphClient.AccessReviews
	.Request()
	.Filter("businessFlowTemplateId eq '6e4f3d20-c5c3-407f-9695-8460952bcc68'")
	.Skip(0)
	.Top(100)
	.GetAsync();

```