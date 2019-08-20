---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessReviews = await graphClient.AccessReviews
	.Request()
	.Filter("businessFlowTemplateId+eq+'6E4F3D20-C5C3-407F-9695-8460952BCC68'")
	.GetAsync();

```