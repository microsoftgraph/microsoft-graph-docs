---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintTaskDefinitionCollectionPage taskDefinitions = graphClient.print().taskDefinitions()
	.buildRequest()
	.get();

```