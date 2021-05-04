---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupCollectionPage group = graphClient.directory().deletedItems().microsoft.graph.group()
	.buildRequest()
	.get();

```