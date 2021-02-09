---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReviewSet reviewSet = new ReviewSet();
reviewSet.displayName = "My Reviewset 3";

graphClient.compliance().ediscovery().cases("6f65a8e4-c6a0-4cff-8a81-c9ab5df7290d").reviewSets()
	.buildRequest()
	.post(reviewSet);

```