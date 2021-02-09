---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrintTaskDefinitionCollectionPage taskDefinitions = graphClient.print().taskDefinitions()
	.buildRequest()
	.get();

```