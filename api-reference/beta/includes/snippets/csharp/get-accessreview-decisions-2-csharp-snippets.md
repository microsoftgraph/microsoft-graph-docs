---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var myDecisions = await graphClient.AccessReviews["{accessReview-id}"].MyDecisions
	.Request()
	.GetAsync();

```