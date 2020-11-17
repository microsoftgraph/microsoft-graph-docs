---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessReviewCollectionPage accessReviews = graphClient.accessReviews()
	.buildRequest()
	.filter("businessFlowTemplateId+eq+'6e4f3d20-c5c3-407f-9695-8460952bcc68',")
	.skip(0)
	.top(100)
	.get();

```