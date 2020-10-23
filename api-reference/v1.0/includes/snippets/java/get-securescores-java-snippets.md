---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISecureScoreCollectionPage secureScores = graphClient.security().secureScores()
	.buildRequest()
	.top(1)
	.get();

```