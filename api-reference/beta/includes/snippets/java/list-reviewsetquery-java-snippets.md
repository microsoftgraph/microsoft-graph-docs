---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IReviewSetQueryCollectionPage queries = graphClient.compliance().ediscovery().cases("2eef613a-ca2d-42f4-89fe-84d5198ddedf").reviewSets("b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8").queries()
	.buildRequest()
	.get();

```