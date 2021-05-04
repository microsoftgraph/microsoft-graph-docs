---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintTaskCollectionPage tasks = graphClient.print().taskDefinitions("{taskDefinitionId}").tasks()
	.buildRequest()
	.get();

```