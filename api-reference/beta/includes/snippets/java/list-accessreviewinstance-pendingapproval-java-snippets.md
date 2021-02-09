---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAccessReviewInstanceCollectionPage pendingAccessReviewInstances = graphClient.me().pendingAccessReviewInstances()
	.buildRequest()
	.expand("definition")
	.skip(0)
	.top(100)
	.get();

```