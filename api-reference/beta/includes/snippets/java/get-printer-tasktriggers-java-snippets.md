---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrintTaskTriggerCollectionPage taskTriggers = graphClient.print().printers("{id}").taskTriggers()
	.buildRequest()
	.get();

```