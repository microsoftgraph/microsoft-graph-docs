---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IReviewSetCollectionPage reviewSets = graphClient.compliance().ediscovery().cases("6f65a8e4-c6a0-4cff-8a81-c9ab5df7290d").reviewSets()
	.buildRequest()
	.get();

```