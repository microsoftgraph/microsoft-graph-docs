---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewInstanceCollectionPage pendingAccessReviewInstances = graphClient.me().pendingAccessReviewInstances()
	.buildRequest()
	.expand("definition")
	.skip(0)
	.top(100)
	.get();

```