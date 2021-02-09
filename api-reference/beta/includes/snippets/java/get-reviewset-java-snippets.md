---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReviewSet reviewSet = graphClient.compliance().ediscovery().cases("6f65a8e4-c6a0-4cff-8a81-c9ab5df7290d").reviewSets("0157910c-57ce-4e48-bd4b-90f3c88ca32e")
	.buildRequest()
	.get();

```