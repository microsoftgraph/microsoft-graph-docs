---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.me().pendingAccessReviewInstances("70a68410-67f3-4d4c-b946-6989e050be19")
	.acceptRecommendations()
	.buildRequest()
	.post();

```