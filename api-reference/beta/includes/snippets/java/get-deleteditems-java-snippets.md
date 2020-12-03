---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IGroupCollectionPage group = graphClient.directory().deletedItems().microsoft.graph.group()
	.buildRequest()
	.get();

```