---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IRelationCollectionPage relations = graphClient.termStore().sets("{setId}").relations()
	.buildRequest()
	.get();

```